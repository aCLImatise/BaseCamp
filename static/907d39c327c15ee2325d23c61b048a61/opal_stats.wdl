version 1.0

task OpalStats.py {
  input {
    String inputInputDir
    String outputOutputDir
    String yamlYaml
    String volumeVolume
    String? imageImage
  }
  command <<<
    opal_stats.py \
      ~{imageImage} \
      ~{if defined(inputInputDir) then ("--input_dir " +  '"' + inputInputDir + '"') else ""} \
      ~{if defined(outputOutputDir) then ("--output_dir " +  '"' + outputOutputDir + '"') else ""} \
      ~{if defined(yamlYaml) then ("--yaml " +  '"' + yamlYaml + '"') else ""} \
      ~{if defined(volumeVolume) then ("--volume " +  '"' + volumeVolume + '"') else ""}
  >>>
}