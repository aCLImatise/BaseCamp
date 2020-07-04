version 1.0

task DesignEnergyshift.py {
  input {
    File? file
    Boolean? read_structures_constraints
    String? package
    String? objective
    String? temperature
    String? number
    String? model
    String? energies
    String? stop
    Boolean? csv
    String? kill
    Boolean? progress
    Boolean? debug
  }
  command <<<
    design-energyshift.py \
      ~{if defined(file) then ("--file " +  '"' + file + '"') else ""} \
      ~{true="--input" false="" read_structures_constraints} \
      ~{if defined(package) then ("--package " +  '"' + package + '"') else ""} \
      ~{if defined(objective) then ("--objective " +  '"' + objective + '"') else ""} \
      ~{if defined(temperature) then ("--temperature " +  '"' + temperature + '"') else ""} \
      ~{if defined(number) then ("--number " +  '"' + number + '"') else ""} \
      ~{if defined(model) then ("--model " +  '"' + model + '"') else ""} \
      ~{if defined(energies) then ("--energies " +  '"' + energies + '"') else ""} \
      ~{if defined(stop) then ("--stop " +  '"' + stop + '"') else ""} \
      ~{true="--csv" false="" csv} \
      ~{if defined(kill) then ("--kill " +  '"' + kill + '"') else ""} \
      ~{true="--progress" false="" progress} \
      ~{true="--debug" false="" debug}
  >>>
  parameter_meta {
    file: "Read file in *.inp format"
    read_structures_constraints: "Read custom structures and sequence constraints from stdin"
    package: "Chose the calculation package: hotknots, pkiss, nupack, or vrna/ViennaRNA (default: vrna)"
    objective: "Chose the objective function: 1 for abs differences and 2 for squared (default: 1)"
    temperature: "Temperature of the energy calculations."
    number: "Number of designs to generate"
    model: "Model for getting a new sequence: uniform, nussinov, basepairs, stacking"
    energies: "Target Energies for design. String of comma separated float values."
    stop: "Stop optimization run of unpaired bases if no better solution is aquired after (stop) trials. 0 is no local optimization."
    csv: "Write output as semi-colon csv file to stdout"
    kill: "Timeout value of graph construction in seconds. (default: infinite)"
    progress: "Show progress of optimization"
    debug: "Show debug information of library"
  }
}