version 1.0

task EslalimaskMaskfile {
  input {
    File? rf_is_mask
    File? p
    File? g
    File? t
    String esl_ali_mask
    String coords
    String msa_file
    String mask_file
  }
  command <<<
    esl_alimask maskfile \
      ~{esl_ali_mask} \
      ~{coords} \
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
    esl_ali_mask: ""
    coords: ""
    msa_file: ""
    mask_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}