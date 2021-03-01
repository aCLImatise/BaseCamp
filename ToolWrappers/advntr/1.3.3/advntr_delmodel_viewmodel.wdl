version 1.0

task AdvntrDelmodelViewmodel {
  input {
    String? vntr_id
    File? models
    String ad_vntr
    String del_model
  }
  command <<<
    advntr delmodel viewmodel \
      ~{ad_vntr} \
      ~{del_model} \
      ~{if defined(vntr_id) then ("--vntr_id " +  '"' + vntr_id + '"') else ""} \
      ~{if defined(models) then ("--models " +  '"' + models + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    vntr_id: "VNTR ID"
    models: "VNTR models file [vntr_data/hg19_selected_VNTRs_Illumina.db]"
    ad_vntr: ""
    del_model: ""
  }
  output {
    File out_stdout = stdout()
  }
}