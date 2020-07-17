version 1.0

task FmlrcConvert {
  input {
    Boolean? print_version_number
    Boolean? force_overwrite_false
    String? plain_text_bwt
    String out_comp_mbswtdotnpy
  }
  command <<<
    fmlrc-convert \
      ~{out_comp_mbswtdotnpy} \
      ~{true="-v" false="" print_version_number} \
      ~{true="-f" false="" force_overwrite_false} \
      ~{if defined(plain_text_bwt) then ("-i " +  '"' + plain_text_bwt + '"') else ""}
  >>>
  parameter_meta {
    print_version_number: "print version number and exit"
    force_overwrite_false: "force overwrite of existing file (default: false)"
    plain_text_bwt: "the plain text BWT file to be converted into msbwt format (default: stdin)"
    out_comp_mbswtdotnpy: ""
  }
}