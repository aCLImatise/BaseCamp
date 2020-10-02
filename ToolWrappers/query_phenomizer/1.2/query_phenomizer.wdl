version 1.0

task QueryPhenomizer {
  input {
    String? username
    String? password
    Boolean? check_terms
    File? specify_path_file
    Boolean? to_json
    String output_dot
  }
  command <<<
    query_phenomizer \
      ~{output_dot} \
      ~{if defined(username) then ("--username " +  '"' + username + '"') else ""} \
      ~{if defined(password) then ("--password " +  '"' + password + '"') else ""} \
      ~{if (check_terms) then "--check-terms" else ""} \
      ~{if defined(specify_path_file) then ("--output " +  '"' + specify_path_file + '"') else ""} \
      ~{if (to_json) then "--to-json" else ""}
  >>>
  parameter_meta {
    username: "A username for phenomizer"
    password: "A password for phenomizer"
    check_terms: "Check if the term(s) exist"
    specify_path_file: "Specify the path to a file for storing the phenomizer"
    to_json: "If result should be printed to json format\\n-v, --verbose\\n--help                 Show this message and exit.\\n"
    output_dot: "--p-value-limit FLOAT  Specify the highest p-value that you want included."
  }
  output {
    File out_stdout = stdout()
  }
}