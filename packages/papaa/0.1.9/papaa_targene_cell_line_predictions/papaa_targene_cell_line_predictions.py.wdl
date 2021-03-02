version 1.0

task PapaaTargeneCellLinePredictionspy {
  input {
    File? tar_genes
    File? path_genes
    File? classifier_summary
    File? cc_le_rnase_q
    File? cc_le_mut
    File? cc_le_maf
    File? g_dsc_rnase_q
    File? g_dsc_mut
    Int? gds_cone_phar
    Int? g_dsc_two_phar
  }
  command <<<
    papaa_targene_cell_line_predictions_py \
      ~{if defined(tar_genes) then ("--targenes " +  '"' + tar_genes + '"') else ""} \
      ~{if defined(path_genes) then ("--path_genes " +  '"' + path_genes + '"') else ""} \
      ~{if defined(classifier_summary) then ("--classifier_summary " +  '"' + classifier_summary + '"') else ""} \
      ~{if defined(cc_le_rnase_q) then ("--ccle_rnaseq " +  '"' + cc_le_rnase_q + '"') else ""} \
      ~{if defined(cc_le_mut) then ("--ccle_mut " +  '"' + cc_le_mut + '"') else ""} \
      ~{if defined(cc_le_maf) then ("--ccle_maf " +  '"' + cc_le_maf + '"') else ""} \
      ~{if defined(g_dsc_rnase_q) then ("--gdsc_rnaseq " +  '"' + g_dsc_rnase_q + '"') else ""} \
      ~{if defined(g_dsc_mut) then ("--gdsc_mut " +  '"' + g_dsc_mut + '"') else ""} \
      ~{if defined(gds_cone_phar) then ("--gdsc1_phar " +  '"' + gds_cone_phar + '"') else ""} \
      ~{if defined(g_dsc_two_phar) then ("--gdsc2_phar " +  '"' + g_dsc_two_phar + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/papaa:0.1.9--0"
  }
  parameter_meta {
    tar_genes: "string of the genes to extract or gene list file"
    path_genes: "pathway gene list file"
    classifier_summary: "location of classifier_summary file"
    cc_le_rnase_q: "path for ccle_rnaseq data file"
    cc_le_mut: "path for ccle mutational data file"
    cc_le_maf: "path for ccle variant data file"
    g_dsc_rnase_q: "path for gdsc_rnaseq data file"
    g_dsc_mut: "path for gdsc/ccle common mutational data file"
    gds_cone_phar: "path for GDSC1 pharmacological data file"
    g_dsc_two_phar: "path for GDSC2 pharmacological data file\\n"
  }
  output {
    File out_stdout = stdout()
  }
}