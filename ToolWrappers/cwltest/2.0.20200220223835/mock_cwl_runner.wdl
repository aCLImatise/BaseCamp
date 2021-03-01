version 1.0

task Mockcwlrunner {
  input {
    Boolean? quiet
    String? outdir
    String process_file
  }
  command <<<
    mock_cwl_runner \
      ~{process_file} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    quiet: ""
    outdir: ""
    process_file: "jobfile"
  }
  output {
    File out_stdout = stdout()
  }
}