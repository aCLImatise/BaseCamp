version 1.0

task Ipyrad {
  input {
    Boolean? results
    Boolean? quiet
    Boolean? debug
    File? create_new_file
    Int? set_assembly_steps
    Boolean? create_new_branch
    Boolean? merge_multiple_assemblies
    Int? number_use_defaultall
    Int? tune_threading_multithreaded
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
      ~{if defined(set_assembly_steps) then ("-s " +  '"' + set_assembly_steps + '"') else ""} \
      ~{if (create_new_branch) then "-b" else ""} \
      ~{if (merge_multiple_assemblies) then "-m" else ""} \
      ~{if defined(number_use_defaultall) then ("-c " +  '"' + number_use_defaultall + '"') else ""} \
      ~{if defined(tune_threading_multithreaded) then ("-t " +  '"' + tune_threading_multithreaded + '"') else ""} \
      ~{if (mpi) then "--MPI" else ""} \
      ~{if (ip_cluster) then "--ipcluster" else ""} \
      ~{if (download) then "--download" else ""} \
      ~{if defined(p) then ("-p " +  '"' + p + '"') else ""} \
      ~{if (f) then "-f" else ""} \
      ~{if (v) then "-v" else ""}
  >>>
  parameter_meta {
    results: "show results summary for Assembly in params.txt and"
    quiet: "do not print to stderror or stdout."
    debug: "print lots more info to ipyrad_log.txt."
    create_new_file: "create new file 'params-{new}.txt' in current"
    set_assembly_steps: "Set of assembly steps to run, e.g., -s 123"
    create_new_branch: "[BRANCH [BRANCH ...]]\\ncreate new branch of Assembly as params-{branch}.txt,\\nand can be used to drop samples from Assembly."
    merge_multiple_assemblies: "[MERGE [MERGE ...]]\\nmerge multiple Assemblies into one joint Assembly, and\\ncan be used to merge Samples into one Sample."
    number_use_defaultall: "number of CPU cores to use (Default=0=All)"
    tune_threading_multithreaded: "tune threading of multi-threaded binaries (Default=2)"
    mpi: "connect to parallel CPUs across multiple nodes"
    ip_cluster: "[IPCLUSTER]\\nconnect to running ipcluster, enter profile name or\\nprofile='default'"
    download: "[DOWNLOAD [DOWNLOAD ...]]\\ndownload fastq files by accession (e.g., SRP or SRR)"
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