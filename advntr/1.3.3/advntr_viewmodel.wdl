version 1.0

task AdvntrViewmodel {
  input {
    Boolean? h_slash_help
    String? g_slash_gene
    Int? p_slash_pattern
    File? m_slash_models
  }
  command <<<
    advntr viewmodel \
      ~{if (h_slash_help) then "-h/--help" else ""} \
      ~{if defined(g_slash_gene) then ("-g/--gene " +  '"' + g_slash_gene + '"') else ""} \
      ~{if defined(p_slash_pattern) then ("-p/--pattern " +  '"' + p_slash_pattern + '"') else ""} \
      ~{if defined(m_slash_models) then ("-m/--models " +  '"' + m_slash_models + '"') else ""}
  >>>
  parameter_meta {
    h_slash_help: "show this help message and exit"
    g_slash_gene: "comma-separated list of Gene Names"
    p_slash_pattern: "repeating pattern of VNTR in forward (5' to 3') direction"
    m_slash_models: "VNTR models file [vntr_data/hg19_selected_VNTRs_Illumina.db]"
  }
  output {
    File out_stdout = stdout()
  }
}