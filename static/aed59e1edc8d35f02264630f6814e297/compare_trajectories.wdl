version 1.0

task CompareTrajectories.py {
  input {
    String inputInputFp
    String mapMapFp
    String categoriesCategories
    String outputOutputDir
  }
  command <<<
    compare_trajectories.py \
      ~{if defined(inputInputFp) then ("--input_fp " +  '"' + inputInputFp + '"') else ""} \
      ~{if defined(mapMapFp) then ("--map_fp " +  '"' + mapMapFp + '"') else ""} \
      ~{if defined(categoriesCategories) then ("--categories " +  '"' + categoriesCategories + '"') else ""} \
      ~{if defined(outputOutputDir) then ("--output_dir " +  '"' + outputOutputDir + '"') else ""}
  >>>
}