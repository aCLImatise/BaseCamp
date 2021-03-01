version 1.0

task Translategard {
  input {
    Boolean? input_filename_cdnexgardcsv
    File? json_filename_cdnexoutjson
    File? output_filename_
  }
  command <<<
    translate_gard \
      ~{if (input_filename_cdnexgardcsv) then "-i" else ""} \
      ~{if (json_filename_cdnexoutjson) then "-j" else ""} \
      ~{if (output_filename_) then "-o" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_filename_cdnexgardcsv: "input filename (like CD2.nex.GARD.csv)  [required]"
    json_filename_cdnexoutjson: "json filename (like CD2.nex.out.json    [required]"
    output_filename_: "output filename                         [required]"
  }
  output {
    File out_stdout = stdout()
    File out_json_filename_cdnexoutjson = "${in_json_filename_cdnexoutjson}"
    File out_output_filename_ = "${in_output_filename_}"
  }
}