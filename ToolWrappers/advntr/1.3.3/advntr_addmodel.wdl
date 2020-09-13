version 1.0

task AdvntrAddmodel {
  input {
    String? r_slash_reference
    Int? c_slash_chromosome
    Int? p_slash_pattern
    Int? s_slash_start
    Int? e_slash_end
    String? g_slash_gene
    String? a_slash_annotation
    File? m_slash_models
    Boolean? h_slash_help
  }
  command <<<
    advntr addmodel \
      ~{if defined(r_slash_reference) then ("-r/--reference " +  '"' + r_slash_reference + '"') else ""} \
      ~{if defined(c_slash_chromosome) then ("-c/--chromosome " +  '"' + c_slash_chromosome + '"') else ""} \
      ~{if defined(p_slash_pattern) then ("-p/--pattern " +  '"' + p_slash_pattern + '"') else ""} \
      ~{if defined(s_slash_start) then ("-s/--start " +  '"' + s_slash_start + '"') else ""} \
      ~{if defined(e_slash_end) then ("-e/--end " +  '"' + e_slash_end + '"') else ""} \
      ~{if defined(g_slash_gene) then ("-g/--gene " +  '"' + g_slash_gene + '"') else ""} \
      ~{if defined(a_slash_annotation) then ("-a/--annotation " +  '"' + a_slash_annotation + '"') else ""} \
      ~{if defined(m_slash_models) then ("-m/--models " +  '"' + m_slash_models + '"') else ""} \
      ~{if (h_slash_help) then "-h/--help" else ""}
  >>>
  parameter_meta {
    r_slash_reference: "Reference genome"
    c_slash_chromosome: "Chromosome (e.g. chr1)"
    p_slash_pattern: "First repeating pattern of VNTR in forward (5' to 3') direction"
    s_slash_start: "Start coordinate of VNTR in forward (5' to 3') direction"
    e_slash_end: "End coordinate of VNTR in forward (5' to 3') direction"
    g_slash_gene: "Gene name"
    a_slash_annotation: "Annotation of VNTR region"
    m_slash_models: "VNTR models file [vntr_data/hg19_selected_VNTRs_Illumina.db]"
    h_slash_help: "show this help message and exit"
  }
  output {
    File out_stdout = stdout()
  }
}