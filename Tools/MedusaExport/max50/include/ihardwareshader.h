/**********************************************************************
 *<
	FILE: IHardwareShader.h

	DESCRIPTION: Hardware Shader Extension Interface class

	CREATED BY: Norbert Jeske

	HISTORY:

 *>	Copyright (c) 2000 - 2002, All Rights Reserved.
 **********************************************************************/

#ifndef _HARDWARE_SHADER_H_
#define _HARDWARE_SHADER_H_

#define HARDWARE_SHADER_INTERFACE_ID Interface_ID(0x7bbd585b, 0x75bb641c)

#define GFX_MAX_COLORS 2

class Mesh;
class MNMesh;

// Use of the following four classes, TriStrip, MeshData, WireMeshData, and
// MeshFaceData, has been added in 3ds max 4.2.  These classes were updated
// from their original (unused) definitions and use of the IHardwareShader
// class member functions that use these data classes was added in 3ds max 4.2.
// If your plugin utilizes these new mechanisms, be sure that your clients are
// aware that they must run your plugin with 3ds max version 4.2 or higher.
//
// For documentation on the use of these data classes, see the code of the
// HardwareShader plugin samples or contact Discreet.

class TriStrip {
public:
	DWORD	rndMode;
	MtlID	mID;
	MtlID	maxID;
	DWORD	smGrp;
	int		clrMode;
	int		texMode;
	DWTab	v;
	DWTab	n;
	DWTab	c[GFX_MAX_COLORS];
	DWTab	tv[GFX_MAX_TEXTURES];

	void AddVertN(DWORD vtx, DWORD nor) { v.Append(1, &vtx); n.Append(1, &nor); }
	void AddVertNC1(DWORD vtx, DWORD nor, DWORD col) { v.Append(1, &vtx); n.Append(1, &nor); c[0].Append(1, &col); }

	void AddVertNT1(DWORD vtx, DWORD nor, DWORD tvtx) {
		v.Append(1, &vtx); n.Append(1, &nor);
		tv[0].Append(1, &tvtx);
	}
	void AddVertNC1T1(DWORD vtx, DWORD nor, DWORD col, DWORD tvtx) {
		v.Append(1, &vtx); n.Append(1, &nor); c[0].Append(1, &col);
		tv[0].Append(1, &tvtx);
	}
	void AddVertNT2(DWORD vtx, DWORD nor, DWORD tvtx1, DWORD tvtx2) {
		v.Append(1, &vtx); n.Append(1, &nor);
		tv[0].Append(1, &tvtx1); tv[1].Append(1, &tvtx2);
	}
	void AddVertNC1T2(DWORD vtx, DWORD nor, DWORD col, DWORD tvtx1, DWORD tvtx2) {
		v.Append(1, &vtx); n.Append(1, &nor); c[0].Append(1, &col);
		tv[0].Append(1, &tvtx1); tv[1].Append(1, &tvtx2);
	}
	void AddVertNT3(DWORD vtx, DWORD nor, DWORD tvtx1, DWORD tvtx2, DWORD tvtx3) {
		v.Append(1, &vtx); n.Append(1, &nor);
		tv[0].Append(1, &tvtx1); tv[1].Append(1, &tvtx2); tv[2].Append(1, &tvtx3);
	}
	void AddVertNC1T3(DWORD vtx, DWORD nor, DWORD col, DWORD tvtx1, DWORD tvtx2, DWORD tvtx3) {
		v.Append(1, &vtx); n.Append(1, &nor); c[0].Append(1, &col);
		tv[0].Append(1, &tvtx1); tv[1].Append(1, &tvtx2); tv[2].Append(1, &tvtx3);
	}
	void AddVertNT4(DWORD vtx, DWORD nor, DWORD tvtx1, DWORD tvtx2, DWORD tvtx3, DWORD tvtx4) {
		v.Append(1, &vtx); n.Append(1, &nor);
		tv[0].Append(1, &tvtx1); tv[1].Append(1, &tvtx2); tv[2].Append(1, &tvtx3); tv[3].Append(1, &tvtx4);
	}
	void AddVertNC1T4(DWORD vtx, DWORD nor, DWORD col, DWORD tvtx1, DWORD tvtx2, DWORD tvtx3, DWORD tvtx4) {
		v.Append(1, &vtx); n.Append(1, &nor); c[0].Append(1, &col);
		tv[0].Append(1, &tvtx1); tv[1].Append(1, &tvtx2); tv[2].Append(1, &tvtx3); tv[3].Append(1, &tvtx4);
	}
};

typedef TriStrip *TriStripPtr;
typedef Tab<TriStripPtr> TriStripTab;

class MeshData
{
public:
	DWORD_PTR	id;
	int			numFaces;
	GWFace		*faces;
	int			numStrips;
	int			startStrip;
	int			endStrip;
	TriStripTab	*strips;
	DWORD		mapFlags;
	int			numXYZ;
	Point3		*xyz;
	int			numNor;
	Point3		*nor;
	DWTab		*norIndex;
	Point3		*faceNor;
	int			numRGB[GFX_MAX_COLORS];
	Point3		*rgb[GFX_MAX_COLORS];
	int			numUVW[GFX_MAX_TEXTURES];
	Point3		*uvw[GFX_MAX_TEXTURES];
	int			numMtl;
	MaxMaterial	*mtlArray;
	int			displayFlags;
	BitArray	*faceSel;
	BitArray	*edgeSel;

	MeshData()
	  : id(NULL),
		numFaces(0),
		faces(NULL),
		numStrips(0),
		startStrip(0),
		endStrip(0),
		strips(NULL),
		mapFlags(0),
		numXYZ(0),
		xyz(NULL),
		numNor(0),
		nor(NULL),
		norIndex(NULL),
		faceNor(NULL),
		numMtl(0),
		mtlArray(NULL),
		displayFlags(0),
		faceSel(NULL),
		edgeSel(NULL)
	{
		int kk;
		for (kk = 0; kk < GFX_MAX_COLORS; kk++) {
			numRGB[kk] = 0;
			rgb[kk] = NULL;
		}
		for (kk = 0; kk < GFX_MAX_TEXTURES; kk++) {
			numUVW[kk] = 0;
			uvw[kk] = NULL;
		}
	}
};

class WireMeshData
{
public:
	DWORD_PTR	id;
	int			numFaces;
	GWFace		*faces;
	int			numXYZ;
	Point3		*xyz;
	int			displayFlags;
	BitArray	*faceSel;
	BitArray	*edgeSel;
	int			numMat;
	MaxMaterial	*mtlArray;

	WireMeshData()
	  : id(NULL),
		numFaces(0),
		faces(NULL),
		numXYZ(0),
		xyz(NULL),
		displayFlags(0),
		faceSel(NULL),
		edgeSel(NULL),
		numMat(0),
		mtlArray(NULL)
	{}
};

class MeshFaceData
{
public:
	DWORD_PTR	id;
	int			numFaces;
	GWFace		*faces;
	Point3		*faceNor;
	GWFace		*norFaces;
	DWORD		mapFlags;
	int			displayFlags;
	BitArray	*faceSel;
	BitArray	*edgeSel;
	int			numClrFaces[GFX_MAX_COLORS];
	GWFace		*clrFaces[GFX_MAX_COLORS];
	int			numTexFaces[GFX_MAX_TEXTURES];
	GWFace		*texFaces[GFX_MAX_TEXTURES];
	int			numXYZ;
	Point3		*xyz;
	int			numNor;
	Point3		*nor;
	DWTab		*norIndex;
	int			numRGB[GFX_MAX_COLORS];
	Point3		*rgb[GFX_MAX_COLORS];
	int			numUVW[GFX_MAX_TEXTURES];
	Point3		*uvw[GFX_MAX_TEXTURES];
	int			numMat;
	MaxMaterial	*mtlArray;

	MeshFaceData()
	  : id(NULL),
		numFaces(0),
		faces(NULL),
		faceNor(NULL),
		norFaces(NULL),
		mapFlags(0),
		displayFlags(0),
		faceSel(NULL),
		edgeSel(NULL),
		numXYZ(0),
		xyz(NULL),
		numNor(0),
		nor(NULL),
		norIndex(NULL),
		numMat(0),
		mtlArray(NULL)
	{
		int kk;
		for (kk = 0; kk < GFX_MAX_COLORS; kk++) {
			numClrFaces[kk] = 0;
			clrFaces[kk] = NULL;
			numRGB[kk] = 0;
			rgb[kk] = NULL;
		}
		for (kk = 0; kk < GFX_MAX_TEXTURES; kk++) {
			numTexFaces[kk] = 0;
			texFaces[kk] = NULL;
			numUVW[kk] = 0;
			uvw[kk] = NULL;
		}
	}
};

// End of 3ds max 4.2 Extension


class IHardwareShader : public BaseInterface
{
public:
	virtual Interface_ID	GetID() { return HARDWARE_SHADER_INTERFACE_ID; }
	virtual Interface_ID	GetVSID() = 0;
	virtual Interface_ID	GetPSID() = 0;

	// Interface Lifetime
	virtual LifetimeType	LifetimeControl() { return noRelease; }

	// Start to draw object
	virtual void	StartObject(Mesh *mesh) = 0;
	virtual void	StartObject(MNMesh *mnmesh) = 0;

	// Initialize HardwareShader first time or frame-by-frame
	virtual void	InitializeShaders(Mesh *mesh, BaseInterface *pbvs, MaxMaterial *mtlArray, int numMtl, GFX_ESCAPE_FN fn) = 0;
	virtual void	InitializeShaders(MNMesh *mnmesh, BaseInterface *pbvs, MaxMaterial *mtlArray, int numMtl, GFX_ESCAPE_FN fn) = 0;

	// Try to draw as tristrips?
	virtual bool	CanTryStrips() = 0;

	// Retrive the current rendering mode
	virtual DWORD	GetRndMode() = 0;

	// Retrieve a MaxMaterial
	virtual MaxMaterial	*GetMaterial(int numMat) = 0;

	// Set a MaxMaterial
    virtual void	SetMaterial(const MaxMaterial &m, int index=0) = 0;

	// Retrieve number of passes for specified MaxMaterial in MaxMaterial array
	virtual int		GetNumMultiPass(int numMtl) = 0;

	// Set the number of the current pass
	virtual void	SetNumMultiPass(int numPass) = 0;

	// Draw 3D mesh as TriStrips
	virtual void	DrawMeshStrips(MeshData *data, GFX_ESCAPE_FN fn) = 0;

	// Draw 3D mesh as wireframe
	virtual void	DrawWireMesh(WireMeshData *data, GFX_ESCAPE_FN fn) = 0;

	// Draw 3D lines
	virtual void	StartLines(WireMeshData *data) = 0;
	virtual void	AddLine(DWORD *vert, int vis) = 0;
	virtual void	DrawLines() = 0;
	virtual void	EndLines(GFX_ESCAPE_FN fn) = 0;

	// Draw 3D triangles
	virtual void	StartTriangles(MeshFaceData *data) = 0;
	virtual void	AddTriangle(DWORD index, int *edgeVis) = 0;
	virtual void	DrawTriangles() = 0;
	virtual void	EndTriangles(GFX_ESCAPE_FN fn) = 0;

	// End of drawing object
	virtual void	EndObject(Mesh *mesh) = 0;
	virtual void	EndObject(MNMesh *mnmesh) = 0;
};

class IVertexShader
{
public:
	// Load VertexShader instructions, create any additional per vertex data on
	// a per node basis.  VertexShader instructions should be loaded once and
	// shared among all the nodes using this VertexShader.  Additional per
	// vertex data should be (re)created only when the associated node data
	// changes.  In addition, if there is sufficient memory, VertexBuffers can
	// be created and updated only when node data changes in order to improve
	// rendering performance.
	virtual HRESULT Initialize(Mesh *mesh, INode *node) = 0;
	virtual HRESULT Initialize(MNMesh *mnmesh, INode *node) = 0;
};

#endif
