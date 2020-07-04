version 1.0

task ClipcontextEir {
  input {
    String? tr
    String? gtf
    String? exon_out
    String? intron_out
  }
  command <<<
    clipcontext eir \
      ~{if defined(tr) then ("--tr " +  '"' + tr + '"') else ""} \
      ~{if defined(gtf) then ("--gtf " +  '"' + gtf + '"') else ""} \
      ~{if defined(exon_out) then ("--exon-out " +  '"' + exon_out + '"') else ""} \
      ~{if defined(intron_out) then ("--intron-out " +  '"' + intron_out + '"') else ""}
  >>>
  parameter_meta {
    tr: "Transcript sequence IDs list file for which to extract exon + intron regions"
    gtf: "Genomic annotations (hg38) GTF file (.gtf or .gtf.gz)"
    exon_out: "Exon regions BED output file"
    intron_out: "Intron regions BED output file"
  }
}