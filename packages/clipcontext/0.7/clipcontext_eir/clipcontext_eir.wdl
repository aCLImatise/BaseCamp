version 1.0

task ClipcontextEir {
  input {
    File? tr
    File? gtf
    File? exon_out
    File? intron_out
  }
  command <<<
    clipcontext eir \
      ~{if defined(tr) then ("--tr " +  '"' + tr + '"') else ""} \
      ~{if defined(gtf) then ("--gtf " +  '"' + gtf + '"') else ""} \
      ~{if defined(exon_out) then ("--exon-out " +  '"' + exon_out + '"') else ""} \
      ~{if defined(intron_out) then ("--intron-out " +  '"' + intron_out + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/clipcontext:0.7--py_0"
  }
  parameter_meta {
    tr: "Transcript sequence IDs list file for which to extract\\nexon + intron regions"
    gtf: "Genomic annotations (hg38) GTF file (.gtf or .gtf.gz)"
    exon_out: "Exon regions BED output file"
    intron_out: "Intron regions BED output file"
  }
  output {
    File out_stdout = stdout()
    File out_exon_out = "${in_exon_out}"
    File out_intron_out = "${in_intron_out}"
  }
}