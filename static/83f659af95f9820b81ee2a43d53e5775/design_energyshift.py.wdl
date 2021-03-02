version 1.0

task Designenergyshiftpy {
  input {
    File? read_structures_input
    Float? temperature
    Int? number
    String? model
    Float? energies
    Float? gc
    Float? simple_tolerance
    Float? gc_tolerance
    Int? tolerance
    Boolean? csv_output
    Boolean? debug
  }
  command <<<
    design_energyshift_py \
      ~{if defined(read_structures_input) then ("--input " +  '"' + read_structures_input + '"') else ""} \
      ~{if defined(temperature) then ("--temperature " +  '"' + temperature + '"') else ""} \
      ~{if defined(number) then ("--number " +  '"' + number + '"') else ""} \
      ~{if defined(model) then ("--model " +  '"' + model + '"') else ""} \
      ~{if defined(energies) then ("--energies " +  '"' + energies + '"') else ""} \
      ~{if defined(gc) then ("--gc " +  '"' + gc + '"') else ""} \
      ~{if defined(simple_tolerance) then ("--simple_tolerance " +  '"' + simple_tolerance + '"') else ""} \
      ~{if defined(gc_tolerance) then ("--gctolerance " +  '"' + gc_tolerance + '"') else ""} \
      ~{if defined(tolerance) then ("--tolerance " +  '"' + tolerance + '"') else ""} \
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
    energies: "Target Energies for design. String of comma separated\\nfloat values. (default: )"
    gc: "Target GC content. (default: 0.5)"
    simple_tolerance: "Tolerated relative deviation to target energies in the\\nsimple model. (default: 0.2)"
    gc_tolerance: "Tolerated relative deviation to target GC content.\\n(default: 0.05)"
    tolerance: "Turner energy tolerance to the target energies\\n(default: 1 kcal/mol, turn off by values <0) (default:\\n1)"
    csv_output: "Output csv format (with additional information)\\n(default: False)"
    debug: "Show debug information of library (default: False)"
  }
  output {
    File out_stdout = stdout()
  }
}