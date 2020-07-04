version 1.0

task AnalyzeExonExonMappings.py {
  input {
    String? input_file_sorted
    String? input_hugo
    String? output_file_containing_summary
    String? output_henrik
  }
  command <<<
    analyze_exon-exon_mappings.py \
      ~{if defined(input_file_sorted) then ("--input " +  '"' + input_file_sorted + '"') else ""} \
      ~{if defined(input_hugo) then ("--input_hugo " +  '"' + input_hugo + '"') else ""} \
      ~{if defined(output_file_containing_summary) then ("--output " +  '"' + output_file_containing_summary + '"') else ""} \
      ~{if defined(output_henrik) then ("--output_henrik " +  '"' + output_henrik + '"') else ""}
  >>>
  parameter_meta {
    input_file_sorted: "The input file in BOWTIE MAP format where the rows are sorted by the column containing the reference sequence, which is gene-gene,transcript-transcript, exon-exon."
    input_hugo: "The input database used for linking ENSEMBL GENE ID to HUGO gene names."
    output_file_containing_summary: "The output file containing the summary of the reads mapping on the exon-exon junctions."
    output_henrik: "The output file containing extra information regarding the reads' mappings on the exon-exon junctions."
  }
}