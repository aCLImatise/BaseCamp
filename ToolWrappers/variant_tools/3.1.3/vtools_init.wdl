version 1.0

task VtoolsInit {
  input {
    Boolean? force
    Int? build
    String? store
    String? verbosity
    File? parent
    Boolean? variants
    Boolean? samples
    Boolean? genotypes
    Array[String] children
    String? table
  }
  command <<<
    vtools init \
      ~{table} \
      ~{if (force) then "--force" else ""} \
      ~{if defined(build) then ("--build " +  '"' + build + '"') else ""} \
      ~{if defined(store) then ("--store " +  '"' + store + '"') else ""} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""} \
      ~{if defined(parent) then ("--parent " +  '"' + parent + '"') else ""} \
      ~{if (variants) then "--variants" else ""} \
      ~{if (samples) then "--samples" else ""} \
      ~{if (genotypes) then "--genotypes" else ""} \
      ~{if defined(children) then ("--children " +  '"' + children + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    force: "Remove a project if it already exists."
    build: "Set the build (hg18 or hg19) of the primary reference\\ngenome of the project."
    store: "Storage model used to storage variants and genotype.\\nThe default value is the value set by environmental\\nvariable STOREMODE or sqlite if the variable is not\\nset."
    verbosity: "Output error and warning (0), info (1), debug (2) and\\ntrace (3) information to standard output (default to\\n1)."
    parent: "Directory or snapshot file of a parent project (e.g.\\n--parent ../main) from which all or part of variants\\n(--variants), samples (--samples) and genotypes\\n(--genotypes) will be copied to the newly created\\nproject."
    variants: "[TABLE]    A variant table of the parental project whose variants\\nwill be copied to the new project. Default to variant\\n(all variants)."
    samples: "[COND [COND ...]]\\nCopy only samples of the parental project that match\\nspecified conditions."
    genotypes: "[COND [COND ...]]\\nCopy only genotypes that match specified conditions."
    children: "A list of a subprojects (directories or snapshot files\\nof projects) that will be merged to create this new\\nproject. The subprojects must have the same primary\\nand alternative reference genome. Variant tables with\\nthe same names from multiple samples will be merged.\\nSamples from the children projects will be copied even\\nif they were identical samples imported from the same\\nsource files.\\n"
    table: ""
  }
  output {
    File out_stdout = stdout()
  }
}