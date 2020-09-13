version 1.0

task NanoSplitFastqfile {
  input {
    String? outdir
    String? q
  }
  command <<<
    NanoSplit fastqfile \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if defined(q) then ("-q " +  '"' + q + '"') else ""}
  >>>
  parameter_meta {
    outdir: ""
    q: ""
  }
  output {
    File out_stdout = stdout()
  }
}