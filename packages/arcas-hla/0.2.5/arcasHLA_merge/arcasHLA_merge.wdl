version 1.0

task ArcasHLAMerge {
  input {
    Boolean? in_dir
    Directory? outdir
    Boolean? run
  }
  command <<<
    arcasHLA merge \
      ~{if (in_dir) then "--indir" else ""} \
      ~{if (outdir) then "--outdir" else ""} \
      ~{if (run) then "--run" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/arcas-hla:0.2.5--hdfd78af_0"
  }
  parameter_meta {
    in_dir: "directory containing arcasHLA files"
    outdir: "out directory"
    run: "run name"
  }
  output {
    File out_stdout = stdout()
    Directory out_outdir = "${in_outdir}"
  }
}