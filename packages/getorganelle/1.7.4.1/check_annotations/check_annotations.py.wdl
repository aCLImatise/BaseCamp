version 1.0

task CheckAnnotationspy {
  input {
    File? input_reference_gb
    File? input_reference_fasta
    Int? t_ends
    Int? a_ends
    Int? l_threshold
    Boolean? similarity
    String query
    String trna_dot
    String calculation_dot
  }
  command <<<
    check_annotations_py \
      ~{query} \
      ~{trna_dot} \
      ~{calculation_dot} \
      ~{if defined(input_reference_gb) then ("-r " +  '"' + input_reference_gb + '"') else ""} \
      ~{if defined(input_reference_fasta) then ("-d " +  '"' + input_reference_fasta + '"') else ""} \
      ~{if defined(t_ends) then ("--t-ends " +  '"' + t_ends + '"') else ""} \
      ~{if defined(a_ends) then ("--a-ends " +  '"' + a_ends + '"') else ""} \
      ~{if defined(l_threshold) then ("--l-threshold " +  '"' + l_threshold + '"') else ""} \
      ~{if (similarity) then "--similarity" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/getorganelle:1.7.4.1--pyh5e36f6f_0"
  }
  parameter_meta {
    input_reference_gb: "input reference *.gb file"
    input_reference_fasta: "input reference fasta file exported exported by\\n\\\"Extract Annotations\\\"-\\\"Export\\\"-\\\"Selected\\nDocuments\\\"-fasta in Geneious, remember to choose\\n\\\"Replace spaces in sequence name with underscores\\\""
    t_ends: "Default=10. The length to check at the both ends of"
    a_ends: "Default:not activated. Activate this calculation and\\nassign the length to check at the both ends of\\nannotated all regions."
    l_threshold: "Default=0.9. Length threshold to report warning."
    similarity: "Default=False. Choose to enable similarity"
    query: "Input a list of *.gb files as the query (split the\\nfiles by spaces)."
    trna_dot: "--c-ends ENDS_CDS     Default:not activated. Activate this calculation and"
    calculation_dot: "--s-threshold SIMILARITY"
  }
  output {
    File out_stdout = stdout()
  }
}