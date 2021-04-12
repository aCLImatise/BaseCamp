version 1.0

task AlignTrimOrthologs {
  input {
    File? orthologs_zip
    String? retained_threshold
    Int? max_in_del_length
    File? aligned_zip
    File? misaligned_zip
    File? trimmed_zip
    File? stats
    File? scatterplot
    String filter_orthologs_do_tpy
  }
  command <<<
    align_trim_orthologs \
      ~{filter_orthologs_do_tpy} \
      ~{if defined(orthologs_zip) then ("--orthologs-zip " +  '"' + orthologs_zip + '"') else ""} \
      ~{if defined(retained_threshold) then ("--retained-threshold " +  '"' + retained_threshold + '"') else ""} \
      ~{if defined(max_in_del_length) then ("--max-indel-length " +  '"' + max_in_del_length + '"') else ""} \
      ~{if defined(aligned_zip) then ("--aligned-zip " +  '"' + aligned_zip + '"') else ""} \
      ~{if defined(misaligned_zip) then ("--misaligned-zip " +  '"' + misaligned_zip + '"') else ""} \
      ~{if defined(trimmed_zip) then ("--trimmed-zip " +  '"' + trimmed_zip + '"') else ""} \
      ~{if defined(stats) then ("--stats " +  '"' + stats + '"') else ""} \
      ~{if defined(scatterplot) then ("--scatterplot " +  '"' + scatterplot + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    orthologs_zip: "archive of orthologous genes in FASTA format"
    retained_threshold: "filter orthologs that retain less than PERC % of sequence after trimming alignment"
    max_in_del_length: "filter orthologs that contain insertions / deletions longer than N in middle of alignment"
    aligned_zip: "destination file path for archive of aligned orthologous genes"
    misaligned_zip: "destination file path for archive of misaligned orthologous genes"
    trimmed_zip: "destination file path for archive of aligned & trimmed orthologous genes"
    stats: "destination file path for ortholog trimming statistics file"
    scatterplot: "destination file path for scatterplot of retained and filtered sequences by length"
    filter_orthologs_do_tpy: ""
  }
  output {
    File out_stdout = stdout()
  }
}