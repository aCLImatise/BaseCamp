version 1.0

task MockCwlRunner {
  input {
    String? outdir
    Boolean? quiet
  }
  command <<<
    mock-cwl-runner \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{true="--quiet" false="" quiet}
  >>>
  parameter_meta {
    outdir: ""
    quiet: ""
  }
}