version 1.0

task Biopythonconvert {
  input {
    String? records_seperate_files
    File? select_records_return
    String? details_records_conversion
    String? version_and_exit
  }
  command <<<
    biopython_convert \
      ~{if defined(records_seperate_files) then ("-s " +  '"' + records_seperate_files + '"') else ""} \
      ~{if defined(select_records_return) then ("-q " +  '"' + select_records_return + '"') else ""} \
      ~{if defined(details_records_conversion) then ("-i " +  '"' + details_records_conversion + '"') else ""} \
      ~{if defined(version_and_exit) then ("-v " +  '"' + version_and_exit + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    records_seperate_files: "records into seperate files"
    select_records_return: "to select records. Must return list of SeqIO records. Root is list of input SeqIO records."
    details_records_conversion: "out details of records during conversion"
    version_and_exit: "version and exit"
  }
  output {
    File out_stdout = stdout()
  }
}