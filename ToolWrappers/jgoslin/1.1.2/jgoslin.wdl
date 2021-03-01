version 1.0

task Jgoslin {
  input {
    String? grammar
    String? name
    File? output_file
    String j_goslin_cli
  }
  command <<<
    jgoslin \
      ~{j_goslin_cli} \
      ~{if defined(grammar) then ("--grammar " +  '"' + grammar + '"') else ""} \
      ~{if defined(name) then ("--name " +  '"' + name + '"') else ""} \
      ~{if (output_file) then "--outputFile" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    grammar: "Use the provided grammar explicitly instead of all\\ngrammars. Options are: [GOSLIN, GOSLIN_FRAGMENTS,\\nLIPIDMAPS, SWISSLIPIDS, HMDB, NONE]"
    name: "Input a lipid name for parsing."
    output_file: "Write output to file 'goslin-out.tsv' instead of to\\nstd out."
    j_goslin_cli: "-f,--file <arg>      Input a file name to read from for lipid name for\\nparsing. Each lipid name must be on a separate line."
  }
  output {
    File out_stdout = stdout()
    File out_output_file = "${in_output_file}"
  }
}