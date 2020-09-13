version 1.0

task Chipseqgreylist {
  input {
    String? cut_off
    String? bootstraps
    Boolean? quiet
    String? outdir
  }
  command <<<
    chipseq_greylist \
      ~{if defined(cut_off) then ("--cutoff " +  '"' + cut_off + '"') else ""} \
      ~{if defined(bootstraps) then ("--bootstraps " +  '"' + bootstraps + '"') else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""}
  >>>
  parameter_meta {
    cut_off: ""
    bootstraps: ""
    quiet: ""
    outdir: ""
  }
  output {
    File out_stdout = stdout()
  }
}