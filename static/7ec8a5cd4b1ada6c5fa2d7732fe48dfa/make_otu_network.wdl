version 1.0

task MakeOtuNetwork.py {
  input {
    String inputInputFp
    String mapMapFname
    String outputOutputDir
  }
  command <<<
    make_otu_network.py \
      ~{if defined(inputInputFp) then ("--input_fp " +  '"' + inputInputFp + '"') else ""} \
      ~{if defined(mapMapFname) then ("--map_fname " +  '"' + mapMapFname + '"') else ""} \
      ~{if defined(outputOutputDir) then ("--output_dir " +  '"' + outputOutputDir + '"') else ""}
  >>>
}