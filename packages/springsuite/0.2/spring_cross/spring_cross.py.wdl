version 1.0

task SpringCrosspy {
  input {
    File? index
    String? database
    File? output_file
    File? log
    String? zipped
  }
  command <<<
    spring_cross_py \
      ~{if defined(index) then ("--index " +  '"' + index + '"') else ""} \
      ~{if defined(database) then ("--database " +  '"' + database + '"') else ""} \
      ~{if defined(output_file) then ("--output " +  '"' + output_file + '"') else ""} \
      ~{if defined(log) then ("--log " +  '"' + log + '"') else ""} \
      ~{if defined(zipped) then ("--zipped " +  '"' + zipped + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/springsuite:0.2--pyh3252c3a_0"
  }
  parameter_meta {
    index: "PDB Database Index file (ffindex)"
    database: "PDB Database files (ffdata)"
    output_file: "Output file"
    log: "Log File"
    zipped: "Zipped extension in PDB Database\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_file = "${in_output_file}"
  }
}