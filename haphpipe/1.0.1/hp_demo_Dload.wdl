version 1.0

task HpDemoDload {
  input {
    Directory? outdir
    Boolean? ref_only
    String hp_demo
  }
  command <<<
    hp_demo Dload \
      ~{hp_demo} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if (ref_only) then "--refonly" else ""}
  >>>
  parameter_meta {
    outdir: "Output directory (default: .)"
    ref_only: "Does not run entire demo, only pulls the reference files\\n(default: False)\\n"
    hp_demo: ""
  }
  output {
    File out_stdout = stdout()
    Directory out_outdir = "${in_outdir}"
  }
}