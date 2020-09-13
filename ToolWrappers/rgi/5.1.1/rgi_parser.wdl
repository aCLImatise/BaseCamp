version 1.0

task RgiParser {
  input {
    File? rgi_results_json
    String? nameidentifier_output_categorical
    Boolean? include_loose
    String? t
  }
  command <<<
    rgi parser \
      ~{if defined(rgi_results_json) then ("--input " +  '"' + rgi_results_json + '"') else ""} \
      ~{if defined(nameidentifier_output_categorical) then ("--output " +  '"' + nameidentifier_output_categorical + '"') else ""} \
      ~{if (include_loose) then "--include_loose" else ""} \
      ~{if defined(t) then ("-t " +  '"' + t + '"') else ""}
  >>>
  parameter_meta {
    rgi_results_json: "RGI results in a .json file"
    nameidentifier_output_categorical: "Name/identifier for the output categorical .json files"
    include_loose: "Include loose hits in addition to strict and perfect"
    t: ""
  }
  output {
    File out_stdout = stdout()
  }
}