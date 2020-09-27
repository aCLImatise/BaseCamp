version 1.0

task VtoolsSimulate {
  input {
    String? seed
    Int? replicates
    Int? jobs
    String? verbosity
    String spec_file
    String models
  }
  command <<<
    vtools simulate \
      ~{spec_file} \
      ~{models} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if defined(replicates) then ("--replicates " +  '"' + replicates + '"') else ""} \
      ~{if defined(jobs) then ("--jobs " +  '"' + jobs + '"') else ""} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""}
  >>>
  parameter_meta {
    seed: "Random seed for the simulation. A random seed will be\\nused by default but a specific seed could be used to\\nreproduce a previously executed simulation."
    replicates: "Number of consecutive replications to simulate"
    jobs: "Maximum number of concurrent jobs to execute, for\\nsteps of a pipeline that allows multi-processing."
    verbosity: "Output error and warning (0), info (1), debug (2) and\\ntrace (3) information to standard output (default to\\n1).\\n"
    spec_file: "Name of a model specification file, which can be the\\nname of an online specification file, or path to a\\nlocal .pipeline file. Please use command \\\"vtools show\\nsimulations\\\" to get a list all available simulation\\nmodels."
    models: "Name of one or more simulation models defined in\\nSPECFILE, which can be ignored if the SPECFILE only\\ndefines one simulation model. Please use command\\n\\\"vtools show simulation SPECFILE\\\" for details of\\navailable models in SPECFILE, including model-specific\\nparameters that could be used to change the default\\nbehavior of these models."
  }
  output {
    File out_stdout = stdout()
  }
}