version 1.0

task Designredprintmultistatepy {
  input {
    File? read_file_inp
    Boolean? read_custom_structures
    Int? objective
    String? temperature
    Int? number
    String? model
    Int? stop
    String? kill
    File? graph_ml
    File? csv
    Boolean? progress
    Boolean? debug
    String? q
    String stdin
  }
  command <<<
    design_redprint_multistate_py \
      ~{stdin} \
      ~{if defined(read_file_inp) then ("--file " +  '"' + read_file_inp + '"') else ""} \
      ~{if (read_custom_structures) then "--input" else ""} \
      ~{if defined(objective) then ("--objective " +  '"' + objective + '"') else ""} \
      ~{if defined(temperature) then ("--temperature " +  '"' + temperature + '"') else ""} \
      ~{if defined(number) then ("--number " +  '"' + number + '"') else ""} \
      ~{if defined(model) then ("--model " +  '"' + model + '"') else ""} \
      ~{if defined(stop) then ("--stop " +  '"' + stop + '"') else ""} \
      ~{if defined(kill) then ("--kill " +  '"' + kill + '"') else ""} \
      ~{if defined(graph_ml) then ("--graphml " +  '"' + graph_ml + '"') else ""} \
      ~{if (csv) then "--csv" else ""} \
      ~{if (progress) then "--progress" else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if defined(q) then ("-q " +  '"' + q + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    read_file_inp: "Read file in *.inp format"
    read_custom_structures: "Read custom structures and sequence constraints from"
    objective: "Chose the objective function: 1 for abs differences\\nand 2 for squared (default: 1)"
    temperature: "Temperature of the energy calculations."
    number: "Number of designs to generate"
    model: "Model for getting a new sequence: uniform, nussinov,\\nbasepairs, stacking"
    stop: "Stop optimization run of unpaired bases if no better\\nsolution is aquired after (stop) trials. 0 is no\\nunpaired bases optimization."
    kill: "Timeout value of graph construction in seconds.\\n(default: infinite)"
    graph_ml: "Write a graphml file with the given filename."
    csv: "Write output as semi-colon csv file to stdout"
    progress: "Show progress of optimization"
    debug: "Show debug information of library"
    q: ""
    stdin: "-q PACKAGE, --package PACKAGE"
  }
  output {
    File out_stdout = stdout()
    File out_csv = "${in_csv}"
  }
}