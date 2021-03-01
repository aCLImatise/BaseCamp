version 1.0

task PlantcvutilspyJson2csv {
  input {
    File? json
    File? csv
  }
  command <<<
    plantcv_utils_py json2csv \
      ~{if defined(json) then ("--json " +  '"' + json + '"') else ""} \
      ~{if defined(csv) then ("--csv " +  '"' + csv + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    json: "Input PlantCV JSON filename."
    csv: "Output CSV filename prefix."
  }
  output {
    File out_stdout = stdout()
    File out_csv = "${in_csv}"
  }
}