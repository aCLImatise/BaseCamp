version 1.0

task KneaddataDatabase {
  input {
    Boolean? available
    String? download
  }
  command <<<
    kneaddata_database \
      ~{true="--available" false="" available} \
      ~{if defined(download) then ("--download " +  '"' + download + '"') else ""}
  >>>
  parameter_meta {
    available: "print the available databases"
    download: "<build> <install_location> download the selected database to the install location"
  }
}