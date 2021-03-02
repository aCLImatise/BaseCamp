version 1.0

task Fmlrcconvert {
  input {
    Boolean? print_version_number
    Boolean? force_overwrite_false
    File? plain_text_bwt
    String out_comp_mbswtdotnpy
  }
  command <<<
    fmlrc_convert \
      ~{out_comp_mbswtdotnpy} \
      ~{if (print_version_number) then "-v" else ""} \
      ~{if (force_overwrite_false) then "-f" else ""} \
      ~{if defined(plain_text_bwt) then ("-i " +  '"' + plain_text_bwt + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    print_version_number: "print version number and exit"
    force_overwrite_false: "force overwrite of existing file (default: false)"
    plain_text_bwt: "the plain text BWT file to be converted into msbwt format (default: stdin)"
    out_comp_mbswtdotnpy: ""
  }
  output {
    File out_stdout = stdout()
  }
}