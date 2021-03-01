version 1.0

task Designthermoswitchpy {
  input {
    String? package
    Int? number
    String? stop
    String? mode
    String? kill
    File? graph_ml
    File? csv
    Boolean? progress
    Boolean? debug
  }
  command <<<
    design_thermoswitch_py \
      ~{if defined(package) then ("--package " +  '"' + package + '"') else ""} \
      ~{if defined(number) then ("--number " +  '"' + number + '"') else ""} \
      ~{if defined(stop) then ("--stop " +  '"' + stop + '"') else ""} \
      ~{if defined(mode) then ("--mode " +  '"' + mode + '"') else ""} \
      ~{if defined(kill) then ("--kill " +  '"' + kill + '"') else ""} \
      ~{if defined(graph_ml) then ("--graphml " +  '"' + graph_ml + '"') else ""} \
      ~{if (csv) then "--csv" else ""} \
      ~{if (progress) then "--progress" else ""} \
      ~{if (debug) then "--debug" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    package: "Chose the calculation package: hotknots, pkiss,\\nnupack, or vrna/ViennaRNA (default: vrna)"
    number: "Number of designs to generate"
    stop: "Stop optimization run if no better solution is aquired\\nafter (stop) trials."
    mode: "Mode for getting a new sequence: sample,\\nsample_plocal, sample_clocal, random"
    kill: "Timeout value of graph construction in seconds.\\n(default: infinite)"
    graph_ml: "Write a graphml file with the given filename."
    csv: "Write output as semi-colon csv file to stdout"
    progress: "Show progress of optimization"
    debug: "Show debug information of library"
  }
  output {
    File out_stdout = stdout()
    File out_csv = "${in_csv}"
  }
}