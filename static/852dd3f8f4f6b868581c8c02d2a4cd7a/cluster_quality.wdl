version 1.0

task ClusterQuality.py {
  input {
    String inputInputPath
    String mapMap
    String categoryCategory
  }
  command <<<
    cluster_quality.py \
      ~{if defined(inputInputPath) then ("--input_path " +  '"' + inputInputPath + '"') else ""} \
      ~{if defined(mapMap) then ("--map " +  '"' + mapMap + '"') else ""} \
      ~{if defined(categoryCategory) then ("--category " +  '"' + categoryCategory + '"') else ""}
  >>>
}