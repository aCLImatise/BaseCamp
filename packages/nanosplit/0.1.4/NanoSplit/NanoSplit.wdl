version 1.0

task NanoSplit {
  input {
    String? quality
    Directory? outdir
  }
  command <<<
    NanoSplit \
      ~{if defined(quality) then ("--quality " +  '"' + quality + '"') else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""}
  >>>
  parameter_meta {
    quality: "Splitting on this average read quality score"
    outdir: "Specify directory in which output has to be created."
  }
  output {
    File out_stdout = stdout()
    Directory out_outdir = "${in_outdir}"
  }
}