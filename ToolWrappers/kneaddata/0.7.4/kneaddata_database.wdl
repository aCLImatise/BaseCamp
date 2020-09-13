version 1.0

task KneaddataDatabase {
  input {
    Boolean? available
    String? download
  }
  command <<<
    kneaddata_database \
      ~{if (available) then "--available" else ""} \
      ~{if defined(download) then ("--download " +  '"' + download + '"') else ""}
  >>>
  parameter_meta {
    available: "print the available databases"
    download: "<build> <install_location>\\ndownload the selected database to the install location\\n"
  }
  output {
    File out_stdout = stdout()
  }
}