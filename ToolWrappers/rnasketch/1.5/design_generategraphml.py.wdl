version 1.0

task Designgenerategraphmlpy {
  input {
    Boolean? read_custom_structures
    File? write_graphml_file
    File? f
    String stdin
  }
  command <<<
    design_generategraphml_py \
      ~{stdin} \
      ~{if (read_custom_structures) then "--input" else ""} \
      ~{if defined(write_graphml_file) then ("--output " +  '"' + write_graphml_file + '"') else ""} \
      ~{if defined(f) then ("-f " +  '"' + f + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    read_custom_structures: "Read custom structures and sequence constraints from"
    write_graphml_file: "Write graphml file with the given filename.\\n"
    f: ""
    stdin: "-f FILE, --file FILE  Read file in *.inp format"
  }
  output {
    File out_stdout = stdout()
  }
}