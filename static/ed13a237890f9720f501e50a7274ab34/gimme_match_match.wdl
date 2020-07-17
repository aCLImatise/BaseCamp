version 1.0

task GimmeMatchMatch {
  input {
    String? file_pfms_match
    Int? number_return_default
    File? output_file_pdf
    Boolean? h
    String pfm_file
  }
  command <<<
    gimme match match \
      ~{pfm_file} \
      ~{if defined(file_pfms_match) then ("-d " +  '"' + file_pfms_match + '"') else ""} \
      ~{if defined(number_return_default) then ("-n " +  '"' + number_return_default + '"') else ""} \
      ~{if defined(output_file_pdf) then ("-o " +  '"' + output_file_pdf + '"') else ""} \
      ~{true="-h" false="" h}
  >>>
  parameter_meta {
    file_pfms_match: "File with pfms to match against (default: gimme.vertebrate.v5.0.pfm)"
    number_return_default: "Number of matches to return (default 1)"
    output_file_pdf: "Output file with graphical report (png, svg, ps, pdf)"
    h: ""
    pfm_file: "File with pfms"
  }
}