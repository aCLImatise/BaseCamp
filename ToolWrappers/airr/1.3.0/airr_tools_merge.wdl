version 1.0

task AirrtoolsMerge {
  input {
    File? output_file_name
    Boolean? drop
    Array[String] list_airr_rearrangement
  }
  command <<<
    airr_tools merge \
      ~{if defined(output_file_name) then ("-o " +  '"' + output_file_name + '"') else ""} \
      ~{if (drop) then "--drop" else ""} \
      ~{if defined(list_airr_rearrangement) then ("-a " +  '"' + list_airr_rearrangement + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    output_file_name: "Output file name."
    drop: "If specified, drop fields that do not exist in all\\ninput files. Otherwise, include all columns in all\\nfiles and fill missing data with empty strings."
    list_airr_rearrangement: "A list of AIRR rearrangement files.\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_file_name = "${in_output_file_name}"
  }
}