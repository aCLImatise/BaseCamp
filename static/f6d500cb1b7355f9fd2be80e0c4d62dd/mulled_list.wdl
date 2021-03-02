version 1.0

task Mulledlist {
  input {
    String? source
    Boolean? not_singularity
    Boolean? not_cond_a
    File? cond_a_file_path
    File? blocklist
    File? file_write_list
  }
  command <<<
    mulled_list \
      ~{if defined(source) then ("--source " +  '"' + source + '"') else ""} \
      ~{if (not_singularity) then "--not-singularity" else ""} \
      ~{if (not_cond_a) then "--not-conda" else ""} \
      ~{if defined(cond_a_file_path) then ("--conda-filepath " +  '"' + cond_a_file_path + '"') else ""} \
      ~{if defined(blocklist) then ("--blocklist " +  '"' + blocklist + '"') else ""} \
      ~{if defined(file_write_list) then ("--file " +  '"' + file_write_list + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/galaxy-tool-util:20.9.1--py_0"
  }
  parameter_meta {
    source: "Docker, Singularity or Conda."
    not_singularity: "Exclude Docker containers from which Singularity\\ncontainers have already been built."
    not_cond_a: "Exclude Docker containers from which Conda\\nenvironments have already been extracted."
    cond_a_file_path: "If searching for conda environments or employing the\\n--not-conda option, a filepath where the environments\\nare located."
    blocklist: "Provide a 'blocklist file' containing containers which\\nshould be excluded from the list."
    file_write_list: "File to write list to. If not given output will be\\nreturned on the command line.\\n"
  }
  output {
    File out_stdout = stdout()
    File out_file_write_list = "${in_file_write_list}"
  }
}