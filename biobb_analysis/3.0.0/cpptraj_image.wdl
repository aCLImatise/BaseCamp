version 1.0

task CpptrajImage {
  input {
    String configConfig
    String inputInputTopPath
    String inputInputTRajPath
    String outputOutputCPptRajPath
  }
  command <<<
    cpptraj_image \
      ~{if defined(configConfig) then ("--config " +  '"' + configConfig + '"') else ""} \
      ~{if defined(inputInputTopPath) then ("--input_top_path " +  '"' + inputInputTopPath + '"') else ""} \
      ~{if defined(inputInputTRajPath) then ("--input_traj_path " +  '"' + inputInputTRajPath + '"') else ""} \
      ~{if defined(outputOutputCPptRajPath) then ("--output_cpptraj_path " +  '"' + outputOutputCPptRajPath + '"') else ""}
  >>>
}