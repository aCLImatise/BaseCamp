version 1.0

task CpinsimSimulate {
  input {
    Int? concentrations
    Int? number_of_copies
    Float? association_probability
    Float? dissociation_probability
    Int? max_steps
    String? perturbation
    File? output_graph
    File? output_log
  }
  command <<<
    cpinsim simulate \
      ~{if defined(concentrations) then ("--concentrations " +  '"' + concentrations + '"') else ""} \
      ~{if defined(number_of_copies) then ("--number-of-copies " +  '"' + number_of_copies + '"') else ""} \
      ~{if defined(association_probability) then ("--association-probability " +  '"' + association_probability + '"') else ""} \
      ~{if defined(dissociation_probability) then ("--dissociation-probability " +  '"' + dissociation_probability + '"') else ""} \
      ~{if defined(max_steps) then ("--max-steps " +  '"' + max_steps + '"') else ""} \
      ~{if defined(perturbation) then ("--perturbation " +  '"' + perturbation + '"') else ""} \
      ~{if defined(output_graph) then ("--output-graph " +  '"' + output_graph + '"') else ""} \
      ~{if defined(output_log) then ("--output-log " +  '"' + output_log + '"') else ""}
  >>>
  parameter_meta {
    concentrations: "PATH/TO/CONCENTRATIONS, -c MAX-PROTEIN-INSTANCES PATH/TO/CONCENTRATIONS\\nMaximum number of protein instances and path to a csv-\\nfile containing a concentration for each protein."
    number_of_copies: "Number of copies for each protein type."
    association_probability: "The probability for a new association between two\\nproteins (default: 0.005)."
    dissociation_probability: "The probability for a dissociation of a pairwise\\ninteraction (default: 0.0125)."
    max_steps: "Maximum number of simulation steps if convergence is\\nnot reached until then (default: 1000)."
    perturbation: "FACTOR, -p PROTEIN FACTOR\\nProtein that should be overexpressed or down regulated\\nby factor FACTOR for perturbation analysis."
    output_graph: "Pickle the complete graph at the end of simulation\\n(after last dissociation step) and write it to the\\ngiven path."
    output_log: "Write some log information of each simulation stept to\\nthe given path. If not specified, std-out is used.\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_log = "${in_output_log}"
  }
}