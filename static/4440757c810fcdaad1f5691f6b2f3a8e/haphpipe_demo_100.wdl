version 1.0

task HaphpipeDemo00 {
  input {
    Directory? outdir
    Boolean? ref_only
    String ha_ph_pipe
    String demo
  }
  command <<<
    haphpipe demo _00 \
      ~{ha_ph_pipe} \
      ~{demo} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if (ref_only) then "--refonly" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    outdir: "Output directory (default: .)"
    ref_only: "Does not run entire demo, only pulls the reference files\\n(default: False)\\n"
    ha_ph_pipe: ""
    demo: ""
  }
  output {
    File out_stdout = stdout()
    Directory out_outdir = "${in_outdir}"
  }
}