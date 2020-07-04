version 1.0

task CheckAnnotations.py {
  input {
    String? input_reference_file
    String? input_reference_fasta
    String? t_ends
    String? c_ends
    String? a_ends
    Int? l_threshold
    Boolean? similarity
    String? s_threshold
    String python
    String this_script_do_tpy
    String query_dot_gb
  }
  command <<<
    check_annotations.py \
      ~{python} \
      ~{this_script_do_tpy} \
      ~{query_dot_gb} \
      ~{if defined(input_reference_file) then ("-r " +  '"' + input_reference_file + '"') else ""} \
      ~{if defined(input_reference_fasta) then ("-d " +  '"' + input_reference_fasta + '"') else ""} \
      ~{if defined(t_ends) then ("--t-ends " +  '"' + t_ends + '"') else ""} \
      ~{if defined(c_ends) then ("--c-ends " +  '"' + c_ends + '"') else ""} \
      ~{if defined(a_ends) then ("--a-ends " +  '"' + a_ends + '"') else ""} \
      ~{if defined(l_threshold) then ("--l-threshold " +  '"' + l_threshold + '"') else ""} \
      ~{true="--similarity" false="" similarity} \
      ~{if defined(s_threshold) then ("--s-threshold " +  '"' + s_threshold + '"') else ""}
  >>>
  parameter_meta {
    input_reference_file: "input reference *.gb file"
    input_reference_fasta: "input reference fasta file exported exported by \"Extract Annotations\"-\"Export\"-\"Selected Documents\"-fasta in Geneious, remember to choose \"Replace spaces in sequence name with underscores\""
    t_ends: "Default=10. The length to check at the both ends of tRNA."
    c_ends: "Default:not activated. Activate this calculation and assign the length to check at the both ends of CDS."
    a_ends: "Default:not activated. Activate this calculation and assign the length to check at the both ends of annotated all regions."
    l_threshold: "Default=0.9. Length threshold to report warning."
    similarity: "Default=False. Choose to enable similarity calculation."
    s_threshold: "Default=0.9. Similarity threshold to report warning. Should be < length threshold."
    python: ""
    this_script_do_tpy: ""
    query_dot_gb: ""
  }
}