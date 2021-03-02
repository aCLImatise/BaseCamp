version 1.0

task Behst {
  input {
    Int? target_extension
    Int? query_extension
    File? data
    File? gene_annotation_file
    File? transcript_file
    File? interaction_file
    Boolean? no_g_profiler
  }
  command <<<
    behst \
      ~{if defined(target_extension) then ("--target-extension " +  '"' + target_extension + '"') else ""} \
      ~{if defined(query_extension) then ("--query-extension " +  '"' + query_extension + '"') else ""} \
      ~{if defined(data) then ("--data " +  '"' + data + '"') else ""} \
      ~{if defined(gene_annotation_file) then ("--gene-annotation-file " +  '"' + gene_annotation_file + '"') else ""} \
      ~{if defined(transcript_file) then ("--transcript-file " +  '"' + transcript_file + '"') else ""} \
      ~{if defined(interaction_file) then ("--interaction-file " +  '"' + interaction_file + '"') else ""} \
      ~{if (no_g_profiler) then "--no-gprofiler" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    target_extension: "extend target regions by BP base pairs (default 9400)"
    query_extension: "extend query regions by BP base pairs (default 24100)"
    data: "path to directory with reference data (default\\n~/.local/share/behst)"
    gene_annotation_file: "path of gene annotation file (GTF format, default\\nDATADIR/gencode.v19.annotation_withproteinids.gtf)."
    transcript_file: "path to the principal transcript file (BED format,\\ndefault DATADIR/appris_data_principal.bed)"
    interaction_file: "path to the chromatin interactions file (HICCUPS\\nFormat, default DATADIR/hic_8celltypes.hiccups)."
    no_g_profiler: "If activated, generate the gene list and do not call\\ng:ProfileR)"
  }
  output {
    File out_stdout = stdout()
  }
}