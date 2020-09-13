version 1.0

task Designcofoldpy {
  input {
    Boolean? read_custom_structures
    String? temperature
    Int? number
    String? stop
    String? mode
    String? kill
    File? graph_ml
    File? csv
    Boolean? progress
    Boolean? debug
    Int? reporter
    String? q
    String stdin
  }
  command <<<
    design_cofold_py \
      ~{stdin} \
      ~{if (read_custom_structures) then "--input" else ""} \
      ~{if defined(temperature) then ("--temperature " +  '"' + temperature + '"') else ""} \
      ~{if defined(number) then ("--number " +  '"' + number + '"') else ""} \
      ~{if defined(stop) then ("--stop " +  '"' + stop + '"') else ""} \
      ~{if defined(mode) then ("--mode " +  '"' + mode + '"') else ""} \
      ~{if defined(kill) then ("--kill " +  '"' + kill + '"') else ""} \
      ~{if defined(graph_ml) then ("--graphml " +  '"' + graph_ml + '"') else ""} \
      ~{if (csv) then "--csv" else ""} \
      ~{if (progress) then "--progress" else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if defined(reporter) then ("--reporter " +  '"' + reporter + '"') else ""} \
      ~{if defined(q) then ("-q " +  '"' + q + '"') else ""}
  >>>
  parameter_meta {
    read_custom_structures: "Read custom structures and sequence constraints from"
    temperature: "Temperature of the energy calculations."
    number: "Number of designs to generate"
    stop: "Stop optimization run if no better solution is aquired\\nafter (stop) trials."
    mode: "Mode for getting a new sequence: sample,\\nsample_plocal, sample_clocal, random"
    kill: "Timeout value of graph construction in seconds.\\n(default: infinite)"
    graph_ml: "Write a graphml file with the given filename."
    csv: "Write output as semi-colon csv file to stdout"
    progress: "Show progress of optimization"
    debug: "Show debug information of library"
    reporter: "The coding sequence context, excluding the start codon\\nthat should be part of the sequence constraint.\\nDefault are the first 66 nucleotides of eGFP.\\n"
    q: ""
    stdin: "-q PACKAGE, --package PACKAGE"
  }
  output {
    File out_stdout = stdout()
    File out_csv = "${in_csv}"
  }
}