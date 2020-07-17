version 1.0

task WdlRun {
  input {
    String? inputs
    Boolean? sge
    String wdl_file
  }
  command <<<
    wdl run \
      ~{wdl_file} \
      ~{if defined(inputs) then ("--inputs " +  '"' + inputs + '"') else ""} \
      ~{true="--sge" false="" sge}
  >>>
  parameter_meta {
    inputs: "Path to JSON file to define inputs"
    sge: "Use SGE to execute tasks"
    wdl_file: "Path to WDL File"
  }
}