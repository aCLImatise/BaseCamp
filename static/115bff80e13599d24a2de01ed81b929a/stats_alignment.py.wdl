version 1.0

task StatsAlignmentpy {
  input {
    File? query
    File? reference
    Int? ext
    File? prefix
    Directory? outdir
  }
  command <<<
    stats_alignment_py \
      ~{if defined(query) then ("--query " +  '"' + query + '"') else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(ext) then ("--ext " +  '"' + ext + '"') else ""} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{if defined(outdir) then ("--outDir " +  '"' + outdir + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/mtglink:1.0.2--0"
  }
  parameter_meta {
    query: "file containing the inserted sequences obtained from MindTheGap (format: 'xxx.insertions.fasta')"
    reference: "file containing the reference sequence of the gap (format: 'xxx.fasta')"
    ext: "size of the gap, on both sides; determine start/end of gapfilling"
    prefix: "prefix of output file to save the statistical results"
    outdir: "output directory for saving results\\n"
  }
  output {
    File out_stdout = stdout()
    File out_prefix = "${in_prefix}"
    Directory out_outdir = "${in_outdir}"
  }
}