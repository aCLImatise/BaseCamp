version 1.0

task DebarcerMerge {
  input {
    Directory? directory
    String? datatype
  }
  command <<<
    debarcer merge \
      ~{if defined(directory) then ("--Directory " +  '"' + directory + '"') else ""} \
      ~{if defined(datatype) then ("--DataType " +  '"' + datatype + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/debarcer:2.1.3--py_0"
  }
  parameter_meta {
    directory: "Directory containing files to be merged"
    datatype: "Type of files to be merged\\n"
  }
  output {
    File out_stdout = stdout()
  }
}