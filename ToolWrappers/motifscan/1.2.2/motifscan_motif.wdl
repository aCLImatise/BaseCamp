version 1.0

task MotifscanMotif {
  input {
    Boolean? verbose
    Boolean? list
    Boolean? list_remote
    Boolean? install
    String? build
    String? name
    Array[File] local_motif_pfms
    String? remote
    Directory? output_dir
    String? database
    String? genome
    Int? n_random
    String? seed
    String assembly_dot
  }
  command <<<
    motifscan motif \
      ~{assembly_dot} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (list) then "--list" else ""} \
      ~{if (list_remote) then "--list-remote" else ""} \
      ~{if (install) then "--install" else ""} \
      ~{if defined(build) then ("--build " +  '"' + build + '"') else ""} \
      ~{if defined(name) then ("--name " +  '"' + name + '"') else ""} \
      ~{if defined(local_motif_pfms) then ("-i " +  '"' + local_motif_pfms + '"') else ""} \
      ~{if defined(remote) then ("--remote " +  '"' + remote + '"') else ""} \
      ~{if defined(output_dir) then ("--output-dir " +  '"' + output_dir + '"') else ""} \
      ~{if defined(database) then ("--database " +  '"' + database + '"') else ""} \
      ~{if defined(genome) then ("--genome " +  '"' + genome + '"') else ""} \
      ~{if defined(n_random) then ("--n-random " +  '"' + n_random + '"') else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    verbose: "Enable verbose log messages."
    list: "Display installed motif sets."
    list_remote: "Display available remote motif sets."
    install: "Install a new motif set with PFMs."
    build: "Build an installed motif set for additional genome"
    name: "Name of the motif set (PFMs) to be installed."
    local_motif_pfms: "Local motif PFMs file(s) to be installed."
    remote: "Download a remote motif PFMs set."
    output_dir: "Write to a given directory instead of the default\\ndirectory."
    database: "Which remote database is used to list/install motif\\nset (PFMs). Default: jaspar_core"
    genome: "Genome assembly to build the motif set (PFMs) for."
    n_random: "Generate N random background sequences to calculate\\nmotif score cutoffs. Default: 1,000,000"
    seed: "Random seed used to generate background sequences."
    assembly_dot: "--uninstall NAME      Uninstall a motif set."
  }
  output {
    File out_stdout = stdout()
  }
}