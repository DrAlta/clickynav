extends CollisionShape


# Declare member variables here. Examples:
# var a: int = 2
# var b: String = "text"


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta: float) -> void:
#	pass
func build(navmesh: NavigationMesh):
	#var st = SurfaceTool.new()
	#st.begin(Mesh.PRIMITIVE_TRIANGLES)
	var verts : PoolVector3Array = []
	for poly in navmesh.polygons:
		assert(poly.size() == 3)
		for idx in poly:
	#		st.add_vertex(navmesh.vertices[idx])
			verts.append(navmesh.vertices[idx])
	#	st.generate_normals()
	# Commit to a mesh.
#	var mesh = st.commit()
	shape.set_faces(verts)
