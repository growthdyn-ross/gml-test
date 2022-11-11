/// @description Housekeeping
//Destroy Grid if it Exists on Game End
if(ds_exists(ds_depthgrid, ds_type_grid)){
	ds_grid_destroy(ds_depthgrid);
}