version 1.0

task AdvntrDelmodelViewmodel {
  input {
    String? vid_slash_vntr_id
    File? m_slash_models
    Boolean? h_slash_help
    String ad_vntr
    String del_model
  }
  command <<<
    advntr delmodel viewmodel \
      ~{ad_vntr} \
      ~{del_model} \
      ~{if defined(vid_slash_vntr_id) then ("-vid/--vntr_id " +  '"' + vid_slash_vntr_id + '"') else ""} \
      ~{if defined(m_slash_models) then ("-m/--models " +  '"' + m_slash_models + '"') else ""} \
      ~{if (h_slash_help) then "-h/--help" else ""}
  >>>
  parameter_meta {
    vid_slash_vntr_id: "VNTR ID"
    m_slash_models: "VNTR models file [vntr_data/hg19_selected_VNTRs_Illumina.db]"
    h_slash_help: "show this help message and exit"
    ad_vntr: ""
    del_model: ""
  }
  output {
    File out_stdout = stdout()
  }
}