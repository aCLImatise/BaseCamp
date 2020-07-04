version 1.0

task DesignCofold.py {
  input {
    Boolean? read_structures_constraints
    String? package
    String? temperature
    String? number
    String? stop
    String? mode
    String? kill
    String? graph_ml
    Boolean? csv
    Boolean? progress
    Boolean? debug
    String? reporter
  }
  command <<<
    design-cofold.py \
      ~{true="--input" false="" read_structures_constraints} \
      ~{if defined(package) then ("--package " +  '"' + package + '"') else ""} \
      ~{if defined(temperature) then ("--temperature " +  '"' + temperature + '"') else ""} \
      ~{if defined(number) then ("--number " +  '"' + number + '"') else ""} \
      ~{if defined(stop) then ("--stop " +  '"' + stop + '"') else ""} \
      ~{if defined(mode) then ("--mode " +  '"' + mode + '"') else ""} \
      ~{if defined(kill) then ("--kill " +  '"' + kill + '"') else ""} \
      ~{if defined(graph_ml) then ("--graphml " +  '"' + graph_ml + '"') else ""} \
      ~{true="--csv" false="" csv} \
      ~{true="--progress" false="" progress} \
      ~{true="--debug" false="" debug} \
      ~{if defined(reporter) then ("--reporter " +  '"' + reporter + '"') else ""}
  >>>
  parameter_meta {
    read_structures_constraints: "Read custom structures and sequence constraints from stdin"
    package: "Chose the calculation package: hotknots, pkiss, nupack, or vrna/ViennaRNA (default: vrna)"
    temperature: "Temperature of the energy calculations."
    number: "Number of designs to generate"
    stop: "Stop optimization run if no better solution is aquired after (stop) trials."
    mode: "Mode for getting a new sequence: sample, sample_plocal, sample_clocal, random"
    kill: "Timeout value of graph construction in seconds. (default: infinite)"
    graph_ml: "Write a graphml file with the given filename."
    csv: "Write output as semi-colon csv file to stdout"
    progress: "Show progress of optimization"
    debug: "Show debug information of library"
    reporter: "The coding sequence context, excluding the start codon that should be part of the sequence constraint. Default are the first 66 nucleotides of eGFP."
  }
}