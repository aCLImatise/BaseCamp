version 1.0

task CpptrajRms {
  input {
    String configConfig
    String inputInputTopPath
    String inputInputTRajPath
    String inputInputExpPath
    String outputOutputCPptRajPath
  }
  command <<<
    cpptraj_rms \
      ~{if defined(configConfig) then ("--config " +  '"' + configConfig + '"') else ""} \
      ~{if defined(inputInputTopPath) then ("--input_top_path " +  '"' + inputInputTopPath + '"') else ""} \
      ~{if defined(inputInputTRajPath) then ("--input_traj_path " +  '"' + inputInputTRajPath + '"') else ""} \
      ~{if defined(inputInputExpPath) then ("--input_exp_path " +  '"' + inputInputExpPath + '"') else ""} \
      ~{if defined(outputOutputCPptRajPath) then ("--output_cpptraj_path " +  '"' + outputOutputCPptRajPath + '"') else ""}
  >>>
}