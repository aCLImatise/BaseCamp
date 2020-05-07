version 1.0

task MakeRarefactionPlots.py {
  input {
    String inputInputDir
    String mapMapFname
  }
  command <<<
    make_rarefaction_plots.py \
      ~{if defined(inputInputDir) then ("--input_dir " +  '"' + inputInputDir + '"') else ""} \
      ~{if defined(mapMapFname) then ("--map_fname " +  '"' + mapMapFname + '"') else ""}
  >>>
}