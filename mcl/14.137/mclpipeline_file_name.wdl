version 1.0

task MclpipelineFilename {
  input {
    String? parser
    Int? succeed_error_initialization
  }
  command <<<
    mclpipeline file_name \
      ~{if defined(parser) then ("--parser " +  '"' + parser + '"') else ""} \
      ~{if defined(succeed_error_initialization) then ("-1 " +  '"' + succeed_error_initialization + '"') else ""}
  >>>
  parameter_meta {
    parser: "option is required"
    succeed_error_initialization: "did not succeed, error in initialization part"
  }
  output {
    File out_stdout = stdout()
  }
}