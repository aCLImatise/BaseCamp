version 1.0

task BankClean {
  input {
    File? directory_path_clean
    Boolean? display_compatible_version
    String bank_clean
  }
  command <<<
    bank-clean \
      ~{bank_clean} \
      ~{if defined(directory_path_clean) then ("-b " +  '"' + directory_path_clean + '"') else ""} \
      ~{true="-v" false="" display_compatible_version}
  >>>
  parameter_meta {
    directory_path_clean: "The directory path of the bank to clean"
    display_compatible_version: "Display the compatible bank version"
    bank_clean: "[options]  <bank path>  [NCodes]"
  }
}