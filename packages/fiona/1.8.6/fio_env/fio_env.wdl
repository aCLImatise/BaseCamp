version 1.0

task FioEnv {
  input {
    Boolean? formats
    Boolean? credentials
    Boolean? gdal_data
    Boolean? proj_data
  }
  command <<<
    fio env \
      ~{if (formats) then "--formats" else ""} \
      ~{if (credentials) then "--credentials" else ""} \
      ~{if (gdal_data) then "--gdal-data" else ""} \
      ~{if (proj_data) then "--proj-data" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/fiona:1.8.6"
  }
  parameter_meta {
    formats: "Enumerate the available formats."
    credentials: "Print credentials."
    gdal_data: "Print GDAL data path."
    proj_data: "Print PROJ data path."
  }
  output {
    File out_stdout = stdout()
  }
}