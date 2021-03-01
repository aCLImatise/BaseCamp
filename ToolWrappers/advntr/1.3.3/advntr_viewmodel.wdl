version 1.0

task AdvntrViewmodel {
  input {
    String? gene
    Int? pattern
    File? models
  }
  command <<<
    advntr viewmodel \
      ~{if defined(gene) then ("--gene " +  '"' + gene + '"') else ""} \
      ~{if defined(pattern) then ("--pattern " +  '"' + pattern + '"') else ""} \
      ~{if defined(models) then ("--models " +  '"' + models + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    gene: "comma-separated list of Gene Names"
    pattern: "repeating pattern of VNTR in forward (5' to 3') direction"
    models: "VNTR models file [vntr_data/hg19_selected_VNTRs_Illumina.db]"
  }
  output {
    File out_stdout = stdout()
  }
}