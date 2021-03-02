version 1.0

task Modelfromalign {
  input {
    File? align_file
    File? prior_library
    File? alignment_weights
    String? option
    String run_name
  }
  command <<<
    modelfromalign \
      ~{run_name} \
      ~{if defined(align_file) then ("-alignfile " +  '"' + align_file + '"') else ""} \
      ~{if defined(prior_library) then ("-priorlibrary " +  '"' + prior_library + '"') else ""} \
      ~{if defined(alignment_weights) then ("-alignment_weights " +  '"' + alignment_weights + '"') else ""} \
      ~{if defined(option) then ("-option " +  '"' + option + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    align_file: ": Aligned sequences to read. Required."
    prior_library: ": Dirichlet mixture to use."
    alignment_weights: ": Sequence weight file."
    option: ""
    run_name: ""
  }
  output {
    File out_stdout = stdout()
  }
}