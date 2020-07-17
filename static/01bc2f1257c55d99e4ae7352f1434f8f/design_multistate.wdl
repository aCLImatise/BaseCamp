version 1.0

task DesignMultistate.py {
  input {
    String? read_structures_input
    String? temperature
    String? number
    String? model
    String? energy
    String? gc
    String? simple_tolerance
    String? tolerance
    String? gc_tolerance
    Boolean? csv_output
    Boolean? debug
  }
  command <<<
    design-multistate.py \
      ~{if defined(read_structures_input) then ("--input " +  '"' + read_structures_input + '"') else ""} \
      ~{if defined(temperature) then ("--temperature " +  '"' + temperature + '"') else ""} \
      ~{if defined(number) then ("--number " +  '"' + number + '"') else ""} \
      ~{if defined(model) then ("--model " +  '"' + model + '"') else ""} \
      ~{if defined(energy) then ("--energy " +  '"' + energy + '"') else ""} \
      ~{if defined(gc) then ("--gc " +  '"' + gc + '"') else ""} \
      ~{if defined(simple_tolerance) then ("--simple_tolerance " +  '"' + simple_tolerance + '"') else ""} \
      ~{if defined(tolerance) then ("--tolerance " +  '"' + tolerance + '"') else ""} \
      ~{if defined(gc_tolerance) then ("--gctolerance " +  '"' + gc_tolerance + '"') else ""} \
      ~{true="--csv_output" false="" csv_output} \
      ~{true="--debug" false="" debug}
  >>>
  parameter_meta {
    read_structures_input: "Read structures from input file. Default: read from stdin. Format must be dot-bracket structures, each per one line with a trailing line containing only a semi- colon. (default: <_io.TextIOWrapper name='<stdin>' mode='r' encoding='UTF-8'>)"
    temperature: "Temperature of the energy calculations. (default: 37.0)"
    number: "Number of designs to generate (default: 1000)"
    model: "Model for getting a new sequence: uniform, nussinov, basepairs, stacking (default: basepairs)"
    energy: "Target energy (default: None)"
    gc: "Target GC content. (default: 0.5)"
    simple_tolerance: "Tolerated relative deviation of simple energies. (default: 0.3)"
    tolerance: "Turner energy tolerance of energies (default: 1 kcal/mol, turn off by values <0) (default: 1)"
    gc_tolerance: "Tolerated relative deviation to target GC content. (default: 0.1)"
    csv_output: "Output csv format (with additional information) (default: False)"
    debug: "Show debug information of library (default: False)"
  }
}