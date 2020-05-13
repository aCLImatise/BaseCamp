version 1.0

task GeneratePlot.py {
  input {
    File workingWorkingDirectory
    String runRunType
    Boolean noNoR
    Boolean quietQuiet
    String? pythonPython3
    String? generateGeneratePlotPy
    String? workingWorkingDirectory
    String? otherOther
    String? optionsOptions
  }
  command <<<
    generate_plot.py \
      ~{pythonPython3} \
      ~{if defined(workingWorkingDirectory) then ("--working_directory " +  '"' + workingWorkingDirectory + '"') else ""} \
      ~{if defined(runRunType) then ("--run_type " +  '"' + runRunType + '"') else ""} \
      ~{true="--no_r" false="" noNoR} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{generateGeneratePlotPy} \
      ~{workingWorkingDirectory} \
      ~{otherOther} \
      ~{optionsOptions}
  >>>
}