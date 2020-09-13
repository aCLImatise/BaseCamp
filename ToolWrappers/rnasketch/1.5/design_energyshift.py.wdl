version 1.0

task Designenergyshiftpy {
  input {
    File? file
    Boolean? read_custom_structures
    Int? objective
    String? temperature
    Int? number
    String? model
    Float? energies
    Int? stop
    File? csv
    String? kill
    Boolean? progress
    Boolean? debug
    String? q
    String stdin
  }
  command <<<
    design_energyshift_py \
      ~{stdin} \
      ~{if defined(file) then ("--file " +  '"' + file + '"') else ""} \
      ~{if (read_custom_structures) then "--input" else ""} \
      ~{if defined(objective) then ("--objective " +  '"' + objective + '"') else ""} \
      ~{if defined(temperature) then ("--temperature " +  '"' + temperature + '"') else ""} \
      ~{if defined(number) then ("--number " +  '"' + number + '"') else ""} \
      ~{if defined(model) then ("--model " +  '"' + model + '"') else ""} \
      ~{if defined(energies) then ("--energies " +  '"' + energies + '"') else ""} \
      ~{if defined(stop) then ("--stop " +  '"' + stop + '"') else ""} \
      ~{if (csv) then "--csv" else ""} \
      ~{if defined(kill) then ("--kill " +  '"' + kill + '"') else ""} \
      ~{if (progress) then "--progress" else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if defined(q) then ("-q " +  '"' + q + '"') else ""}
  >>>
  parameter_meta {
    file: "Read file in *.inp format"
    read_custom_structures: "Read custom structures and sequence constraints from"
    objective: "Chose the objective function: 1 for abs differences\\nand 2 for squared (default: 1)"
    temperature: "Temperature of the energy calculations."
    number: "Number of designs to generate"
    model: "Model for getting a new sequence: uniform, nussinov,\\nbasepairs, stacking"
    energies: "Target Energies for design. String of comma separated\\nfloat values."
    stop: "Stop optimization run of unpaired bases if no better\\nsolution is aquired after (stop) trials. 0 is no local\\noptimization."
    csv: "Write output as semi-colon csv file to stdout"
    kill: "Timeout value of graph construction in seconds.\\n(default: infinite)"
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