version 1.0

task DesignThermoswitch.py {
  input {
    String? package
    String? number
    String? stop
    String? mode
    String? kill
    String? graph_ml
    Boolean? csv
    Boolean? progress
    Boolean? debug
  }
  command <<<
    design-thermoswitch.py \
      ~{if defined(package) then ("--package " +  '"' + package + '"') else ""} \
      ~{if defined(number) then ("--number " +  '"' + number + '"') else ""} \
      ~{if defined(stop) then ("--stop " +  '"' + stop + '"') else ""} \
      ~{if defined(mode) then ("--mode " +  '"' + mode + '"') else ""} \
      ~{if defined(kill) then ("--kill " +  '"' + kill + '"') else ""} \
      ~{if defined(graph_ml) then ("--graphml " +  '"' + graph_ml + '"') else ""} \
      ~{true="--csv" false="" csv} \
      ~{true="--progress" false="" progress} \
      ~{true="--debug" false="" debug}
  >>>
  parameter_meta {
    package: "Chose the calculation package: hotknots, pkiss, nupack, or vrna/ViennaRNA (default: vrna)"
    number: "Number of designs to generate"
    stop: "Stop optimization run if no better solution is aquired after (stop) trials."
    mode: "Mode for getting a new sequence: sample, sample_plocal, sample_clocal, random"
    kill: "Timeout value of graph construction in seconds. (default: infinite)"
    graph_ml: "Write a graphml file with the given filename."
    csv: "Write output as semi-colon csv file to stdout"
    progress: "Show progress of optimization"
    debug: "Show debug information of library"
  }
}