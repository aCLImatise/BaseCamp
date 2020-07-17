version 1.0

task TranslateGard {
  input {
    Boolean? input_filename_cdnexgardcsv
    Boolean? json_filename_cdnexoutjson
    Boolean? output_filename_
  }
  command <<<
    translate-gard \
      ~{true="-i" false="" input_filename_cdnexgardcsv} \
      ~{true="-j" false="" json_filename_cdnexoutjson} \
      ~{true="-o" false="" output_filename_}
  >>>
  parameter_meta {
    input_filename_cdnexgardcsv: "input filename (like CD2.nex.GARD.csv)  [required]"
    json_filename_cdnexoutjson: "json filename (like CD2.nex.out.json    [required]"
    output_filename_: "output filename                         [required]"
  }
}