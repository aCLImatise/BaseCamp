version 1.0

task FindTandem {
  input {
    String? multifasta_file_scan
    String? minimum_number_units
    String? minimum_length_tandem
    String? max_unit_length
    String? min_unit_length
    String? flanking_bp_report
    String find_tandems
  }
  command <<<
    find-tandem \
      ~{find_tandems} \
      ~{if defined(multifasta_file_scan) then ("-f " +  '"' + multifasta_file_scan + '"') else ""} \
      ~{if defined(minimum_number_units) then ("-u " +  '"' + minimum_number_units + '"') else ""} \
      ~{if defined(minimum_length_tandem) then ("-l " +  '"' + minimum_length_tandem + '"') else ""} \
      ~{if defined(max_unit_length) then ("-x " +  '"' + max_unit_length + '"') else ""} \
      ~{if defined(min_unit_length) then ("-m " +  '"' + min_unit_length + '"') else ""} \
      ~{if defined(flanking_bp_report) then ("-k " +  '"' + flanking_bp_report + '"') else ""}
  >>>
  parameter_meta {
    multifasta_file_scan: "multifasta file to scan"
    minimum_number_units: "minimum number of units to report (default: 3)"
    minimum_length_tandem: "minimum length of tandem in bp (default: 8)"
    max_unit_length: "max unit length (default: 4)"
    min_unit_length: "min unit length (default: 1)"
    flanking_bp_report: "flanking bp to report (default: 10)"
    find_tandems: ""
  }
}