version 1.0

task SsueslalimaskCoords {
  input {
    File? rf_is_mask
    File? p
    File? g
    File? t
    String ssu_esl_ali_mask
    String msa_file
    String mask_file
  }
  command <<<
    ssu_esl_alimask coords \
      ~{ssu_esl_ali_mask} \
      ~{msa_file} \
      ~{mask_file} \
      ~{if defined(rf_is_mask) then ("--rf-is-mask " +  '"' + rf_is_mask + '"') else ""} \
      ~{if defined(p) then ("-p " +  '"' + p + '"') else ""} \
      ~{if defined(g) then ("-g " +  '"' + g + '"') else ""} \
      ~{if defined(t) then ("-t " +  '"' + t + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    rf_is_mask: ""
    p: ""
    g: ""
    t: ""
    ssu_esl_ali_mask: ""
    msa_file: ""
    mask_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}