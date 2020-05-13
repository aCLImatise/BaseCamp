version 1.0

task MergeOtuMaps.py {
  input {
    String otuOtuMapFps
    String outputOutputFp
  }
  command <<<
    merge_otu_maps.py \
      ~{if defined(otuOtuMapFps) then ("--otu_map_fps " +  '"' + otuOtuMapFps + '"') else ""} \
      ~{if defined(outputOutputFp) then ("--output_fp " +  '"' + outputOutputFp + '"') else ""}
  >>>
}