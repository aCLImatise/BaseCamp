version 1.0

task PegasusEnrichment {
  input {
    String? organism
    Float? enrichment_threshold
    Int? max_genes
    String markers_spreadsheet
    String output_spreadsheet
    String xlsx_file_containing
  }
  command <<<
    pegasus enrichment \
      ~{markers_spreadsheet} \
      ~{output_spreadsheet} \
      ~{xlsx_file_containing} \
      ~{if defined(organism) then ("--organism " +  '"' + organism + '"') else ""} \
      ~{if defined(enrichment_threshold) then ("--enrichment_threshold " +  '"' + enrichment_threshold + '"') else ""} \
      ~{if defined(max_genes) then ("--max_genes " +  '"' + max_genes + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/pegasuspy:1.2.0--py38h0213d0e_1"
  }
  parameter_meta {
    organism: "Organism. See https://biit.cs.ut.ee/gprofiler/page/organism-list for full list. [default: hsapiens]"
    enrichment_threshold: "Include enrichment results with corrected p-value less than this threshold. [default: 0.05]"
    max_genes: "Maximum number of genes to include in query. [default: 100]"
    markers_spreadsheet: "Output spreadsheet from de_analysis command."
    output_spreadsheet: "File containing enrichment results."
    xlsx_file_containing: "An xlsx file containing enrichment results."
  }
  output {
    File out_stdout = stdout()
  }
}