version 1.0

task TandemCollapse {
  input {
    Directory? location_bank_directory
    File? config_file_specifies
    String? output_location_misassemblies
  }
  command <<<
    tandemCollapse \
      ~{if defined(location_bank_directory) then ("-b " +  '"' + location_bank_directory + '"') else ""} \
      ~{if defined(config_file_specifies) then ("-c " +  '"' + config_file_specifies + '"') else ""} \
      ~{if defined(output_location_misassemblies) then ("-m " +  '"' + output_location_misassemblies + '"') else ""}
  >>>
  parameter_meta {
    location_bank_directory: "- location of bank directory"
    config_file_specifies: "- config file that specifies locations of tandems"
    output_location_misassemblies: "- output location of mis-assemblies in final layout"
  }
  output {
    File out_stdout = stdout()
  }
}