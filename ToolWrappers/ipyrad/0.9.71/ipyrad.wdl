version 1.0

task Ipyrad {
  input {
    Boolean? results
    Boolean? quiet
    Boolean? debug
    File? create_new_file
    Int? set_assembly_s
    Boolean? create_new_branch
    Boolean? merge_multiple_assemblies
    Int? number_cpu_cores
    Int? tune_threading_default
    Boolean? mpi
    Boolean? ip_cluster
    Boolean? download
    String? p
    Boolean? f
    Boolean? v
    String exit
    Directory directory
  }
  command <<<
    ipyrad \
      ~{exit} \
      ~{directory} \
      ~{if (results) then "--results" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if defined(create_new_file) then ("-n " +  '"' + create_new_file + '"') else ""} \
      ~{if defined(set_assembly_s) then ("-s " +  '"' + set_assembly_s + '"') else ""} \
      ~{if (create_new_branch) then "-b" else ""} \
      ~{if (merge_multiple_assemblies) then "-m" else ""} \
      ~{if defined(number_cpu_cores) then ("-c " +  '"' + number_cpu_cores + '"') else ""} \
      ~{if defined(tune_threading_default) then ("-t " +  '"' + tune_threading_default + '"') else ""} \
      ~{if (mpi) then "--MPI" else ""} \
      ~{if (ip_cluster) then "--ipcluster" else ""} \
      ~{if (download) then "--download" else ""} \
      ~{if defined(p) then ("-p " +  '"' + p + '"') else ""} \
      ~{if (f) then "-f" else ""} \
      ~{if (v) then "-v" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/ipyrad:0.9.71--pyh5e36f6f_0"
  }
  parameter_meta {
    results: "show results summary for Assembly in params.txt and"
    quiet: "do not print to stderror or stdout."
    debug: "print lots more info to ipyrad_log.txt."
    create_new_file: "create new file 'params-{new}.txt' in current"
    set_assembly_s: "Set of assembly steps to run, e.g., -s 123"
    create_new_branch: "[BRANCH ...]       create new branch of Assembly as params-{branch}.txt,\\nand can be used to drop samples from Assembly."
    merge_multiple_assemblies: "[MERGE ...]        merge multiple Assemblies into one joint Assembly, and\\ncan be used to merge Samples into one Sample."
    number_cpu_cores: "number of CPU cores to use (Default=0=All)"
    tune_threading_default: "tune threading of multi-threaded binaries (Default=2)"
    mpi: "connect to parallel CPUs across multiple nodes"
    ip_cluster: "[IPCLUSTER]\\nconnect to running ipcluster, enter profile name or\\nprofile='default'"
    download: "[DOWNLOAD ...]\\ndownload fastq files by accession (e.g., SRP or SRR)"
    p: ""
    f: ""
    v: ""
    exit: "-f, --force           force overwrite of existing data"
    directory: "-p PARAMS             path to params file for Assembly:"
  }
  output {
    File out_stdout = stdout()
  }
}