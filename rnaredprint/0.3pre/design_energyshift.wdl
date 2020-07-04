version 1.0

task DesignEnergyshift.py {
  input {
    String? read_structures_input
    String? temperature
    String? number
    String? model
    String? energies
    String? gc
    String? simple_tolerance
    String? gc_tolerance
    String? tolerance
    Boolean? csv_output
    Boolean? debug
  }
  command <<<
    design-energyshift.py \
      ~{if defined(read_structures_input) then ("--input " +  '"' + read_structures_input + '"') else ""} \
      ~{if defined(temperature) then ("--temperature " +  '"' + temperature + '"') else ""} \
      ~{if defined(number) then ("--number " +  '"' + number + '"') else ""} \
      ~{if defined(model) then ("--model " +  '"' + model + '"') else ""} \
      ~{if defined(energies) then ("--energies " +  '"' + energies + '"') else ""} \
      ~{if defined(gc) then ("--gc " +  '"' + gc + '"') else ""} \
      ~{if defined(simple_tolerance) then ("--simple_tolerance " +  '"' + simple_tolerance + '"') else ""} \
      ~{if defined(gc_tolerance) then ("--gctolerance " +  '"' + gc_tolerance + '"') else ""} \
      ~{if defined(tolerance) then ("--tolerance " +  '"' + tolerance + '"') else ""} \
      ~{true="--csv_output" false="" csv_output} \
      ~{true="--debug" false="" debug}
  >>>
  parameter_meta {
    read_structures_input: "Read structures from input file. Default: read from stdin. Format must be dot-bracket structures, each per one line with a trailing line containing only a semi- colon. (default: <_io.TextIOWrapper name='<stdin>' mode='r' encoding='UTF-8'>)"
    temperature: "Temperature of the energy calculations. (default: 37.0)"
    number: "Number of designs to generate (default: 1000)"
    model: "Model for getting a new sequence: uniform, nussinov, basepairs, stacking (default: basepairs)"
    energies: "Target Energies for design. String of comma separated float values. (default: )"
    gc: "Target GC content. (default: 0.5)"
    simple_tolerance: "Tolerated relative deviation to target energies in the simple model. (default: 0.2)"
    gc_tolerance: "Tolerated relative deviation to target GC content. (default: 0.05)"
    tolerance: "Turner energy tolerance to the target energies (default: 1 kcal/mol, turn off by values <0) (default: 1)"
    csv_output: "Output csv format (with additional information) (default: False)"
    debug: "Show debug information of library (default: False)"
  }
}