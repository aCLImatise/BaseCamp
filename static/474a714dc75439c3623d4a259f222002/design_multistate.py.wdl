version 1.0

task Designmultistatepy {
  input {
    File? read_structures_input
    Float? temperature
    Int? number
    String? model
    String? energy
    Float? gc
    Float? simple_tolerance
    Int? tolerance
    Float? gc_tolerance
    Boolean? csv_output
    Boolean? debug
  }
  command <<<
    design_multistate_py \
      ~{if defined(read_structures_input) then ("--input " +  '"' + read_structures_input + '"') else ""} \
      ~{if defined(temperature) then ("--temperature " +  '"' + temperature + '"') else ""} \
      ~{if defined(number) then ("--number " +  '"' + number + '"') else ""} \
      ~{if defined(model) then ("--model " +  '"' + model + '"') else ""} \
      ~{if defined(energy) then ("--energy " +  '"' + energy + '"') else ""} \
      ~{if defined(gc) then ("--gc " +  '"' + gc + '"') else ""} \
      ~{if defined(simple_tolerance) then ("--simple_tolerance " +  '"' + simple_tolerance + '"') else ""} \
      ~{if defined(tolerance) then ("--tolerance " +  '"' + tolerance + '"') else ""} \
      ~{if defined(gc_tolerance) then ("--gctolerance " +  '"' + gc_tolerance + '"') else ""} \
      ~{if (csv_output) then "--csv_output" else ""} \
      ~{if (debug) then "--debug" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    read_structures_input: "Read structures from input file. Default: read from\\nstdin. Format must be dot-bracket structures, each per\\none line with a trailing line containing only a semi-\\ncolon. (default: <_io.TextIOWrapper name='<stdin>'\\nmode='r' encoding='utf-8'>)"
    temperature: "Temperature of the energy calculations. (default:\\n37.0)"
    number: "Number of designs to generate (default: 1000)"
    model: "Model for getting a new sequence: uniform, nussinov,\\nbasepairs, stacking (default: basepairs)"
    energy: "Target energy (default: None)"
    gc: "Target GC content. (default: 0.5)"
    simple_tolerance: "Tolerated relative deviation of simple energies.\\n(default: 0.3)"
    tolerance: "Turner energy tolerance of energies (default: 1\\nkcal/mol, turn off by values <0) (default: 1)"
    gc_tolerance: "Tolerated relative deviation to target GC content.\\n(default: 0.1)"
    csv_output: "Output csv format (with additional information)\\n(default: False)"
    debug: "Show debug information of library (default: False)"
  }
  output {
    File out_stdout = stdout()
  }
}