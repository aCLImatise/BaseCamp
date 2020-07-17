version 1.0

task DesignLigandswitch.py {
  input {
    File? file
    Boolean? read_structures_constraints
    String? ratio
    String? ligand
    String? temperature
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
    design-ligandswitch.py \
      ~{if defined(file) then ("--file " +  '"' + file + '"') else ""} \
      ~{true="--input" false="" read_structures_constraints} \
      ~{if defined(ratio) then ("--ratio " +  '"' + ratio + '"') else ""} \
      ~{if defined(ligand) then ("--ligand " +  '"' + ligand + '"') else ""} \
      ~{if defined(temperature) then ("--temperature " +  '"' + temperature + '"') else ""} \
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
    file: "Read file in *.inp format"
    read_structures_constraints: "Read custom structures and sequence constraints from stdin"
    ratio: "Ratio of the alternative to binding competent state in percent (default: 90:10)"
    ligand: "Binding motif and energy of the ligand (default: \"GAUACCAG&CCCUUGGCAGC;(...((((&)...)))...);-9.22\")"
    temperature: "Temperature of the energy calculations."
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