version 1.0

task SsueslalimaskMsafile {
  input {
    File? rf_is_mask
    File? p
    File? g
    File? t
    String mask_file
    String ssu_esl_ali_mask
    String coords
  }
  command <<<
    ssu_esl_alimask msafile \
      ~{mask_file} \
      ~{ssu_esl_ali_mask} \
      ~{coords} \
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
    mask_file: ""
    ssu_esl_ali_mask: ""
    coords: ""
  }
  output {
    File out_stdout = stdout()
  }
}