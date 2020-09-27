version 1.0

task PrimedLAMP {
  input {
    File? input_file
    String? run_id
  }
  command <<<
    PrimedLAMP \
      ~{if defined(input_file) then ("--InputFile " +  '"' + input_file + '"') else ""} \
      ~{if defined(run_id) then ("--RunID " +  '"' + run_id + '"') else ""}
  >>>
  parameter_meta {
    input_file: ""
    run_id: ""
  }
  output {
    File out_stdout = stdout()
  }
}