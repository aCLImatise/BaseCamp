version 1.0

task HaphpipeDemoDload {
  input {
    Directory? outdir
    Boolean? ref_only
    String ha_ph_pipe
    String demo
  }
  command <<<
    haphpipe demo Dload \
      ~{ha_ph_pipe} \
      ~{demo} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if (ref_only) then "--refonly" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/haphpipe:1.0.3--py_0"
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