version 1.0

task Mockcwlrunner {
  input {
    String? outdir
    Boolean? quiet
    String process_file
  }
  command <<<
    mock_cwl_runner \
      ~{process_file} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if (quiet) then "--quiet" else ""}
  >>>
  parameter_meta {
    outdir: ""
    quiet: ""
    process_file: "jobfile"
  }
  output {
    File out_stdout = stdout()
  }
}