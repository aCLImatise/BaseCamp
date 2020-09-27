version 1.0

task Findtandem {
  input {
    File? multifasta_file_scan
    Int? minimum_number_report
    Int? minimum_length_tandem
    Int? max_unit_length
    Int? min_unit_length
    Int? flanking_bp_report
    String find_tandems
  }
  command <<<
    find_tandem \
      ~{find_tandems} \
      ~{if defined(multifasta_file_scan) then ("-f " +  '"' + multifasta_file_scan + '"') else ""} \
      ~{if defined(minimum_number_report) then ("-u " +  '"' + minimum_number_report + '"') else ""} \
      ~{if defined(minimum_length_tandem) then ("-l " +  '"' + minimum_length_tandem + '"') else ""} \
      ~{if defined(max_unit_length) then ("-x " +  '"' + max_unit_length + '"') else ""} \
      ~{if defined(min_unit_length) then ("-m " +  '"' + min_unit_length + '"') else ""} \
      ~{if defined(flanking_bp_report) then ("-k " +  '"' + flanking_bp_report + '"') else ""}
  >>>
  parameter_meta {
    multifasta_file_scan: "multifasta file to scan"
    minimum_number_report: "minimum number of units to report (default: 3)"
    minimum_length_tandem: "minimum length of tandem in bp (default: 8)"
    max_unit_length: "max unit length (default: 4)"
    min_unit_length: "min unit length (default: 1)"
    flanking_bp_report: "flanking bp to report (default: 10)"
    find_tandems: ""
  }
  output {
    File out_stdout = stdout()
  }
}