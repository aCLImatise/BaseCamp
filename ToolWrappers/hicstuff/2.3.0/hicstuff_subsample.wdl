version 1.0

task HicstuffSubsample {
  input {
    Float? prop
    File? force
    String contact_map
    String subsampled_prefix
  }
  command <<<
    hicstuff subsample \
      ~{contact_map} \
      ~{subsampled_prefix} \
      ~{if defined(prop) then ("--prop " +  '"' + prop + '"') else ""} \
      ~{if (force) then "--force" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    prop: "Proportion of contacts to sample from the input matrix\\nif between 0 and 1. Raw number of contacts to keep if\\nsuperior to 1. [default: 0.1]"
    force: "Write even if the output file already exists."
    contact_map: "Sparse contact matrix in graal, bg2 or cool format."
    subsampled_prefix: "Path without extension to the output map in the same\\nformat as the input containing only a fraction of the\\ncontacts."
  }
  output {
    File out_stdout = stdout()
    File out_force = "${in_force}"
  }
}