version 1.0

task Bankclean {
  input {
    File? directory_path_bank
    Boolean? display_compatible_version
    String bank_clean
  }
  command <<<
    bank_clean \
      ~{bank_clean} \
      ~{if defined(directory_path_bank) then ("-b " +  '"' + directory_path_bank + '"') else ""} \
      ~{if (display_compatible_version) then "-v" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    directory_path_bank: "The directory path of the bank to clean"
    display_compatible_version: "Display the compatible bank version"
    bank_clean: "[options]  <bank path>  [NCodes]"
  }
  output {
    File out_stdout = stdout()
  }
}