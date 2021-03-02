version 1.0

task Alignfamiliespy {
  input {
    String? aligner
    Boolean? no_check_ids
    Int? processes
    Int? queue_size
    Boolean? phone_home
    Boolean? galaxy
    Boolean? test
    File? log_file
    String read_families_dot_tsv
    String run_dot
  }
  command <<<
    align_families_py \
      ~{read_families_dot_tsv} \
      ~{run_dot} \
      ~{if defined(aligner) then ("--aligner " +  '"' + aligner + '"') else ""} \
      ~{if (no_check_ids) then "--no-check-ids" else ""} \
      ~{if defined(processes) then ("--processes " +  '"' + processes + '"') else ""} \
      ~{if defined(queue_size) then ("--queue-size " +  '"' + queue_size + '"') else ""} \
      ~{if (phone_home) then "--phone-home" else ""} \
      ~{if (galaxy) then "--galaxy" else ""} \
      ~{if (test) then "--test" else ""} \
      ~{if defined(log_file) then ("--log-file " +  '"' + log_file + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    aligner: "The multiple sequence aligner to use. Default:\\nkalign"
    no_check_ids: "Don't check to make sure read pairs have identical ids. By default, if this encounters a pair of reads in families.tsv with ids that aren't identical (minus an ending /1 or /2), it will throw an error."
    processes: "Number of worker subprocesses to use. If 0, no\\nsubprocesses will be started and everything\\nwill be done inside one process. Give \\\"auto\\\"\\nto use as many processes as there are CPU\\ncores. Default: 0."
    queue_size: "How long to go accumulating responses from\\nworker subprocesses before dealing with all of\\nthem. Default: 8 * the number of worker\\n--processes."
    phone_home: "Report helpful usage data to the developer, to\\nbetter understand the use cases and\\nperformance of the tool. The only data which\\nwill be recorded is the name and version of\\nthe tool, the size of the input data, the time\\nand memory taken to process it, and the IP\\naddress of the machine running it. Also, if\\nthe script fails, it will report the name of\\nthe exception thrown and the line of code it\\noccurred in. No filenames are sent, and the\\nonly parameters reported are --aligner,\\n--processes, and --queue-size, which are\\nnecessary to evaluate performance. All the\\nreporting and recording code is available at\\nhttps://github.com/NickSto/ET."
    galaxy: "Tell the script it's running on Galaxy.\\nCurrently this only affects data reported when\\nphoning home."
    test: "If reporting usage data, mark this as a test"
    log_file: "Print log messages to this file instead of to\\nstderr. NOTE: Will overwrite the file."
    read_families_dot_tsv: "The input reads, sorted into families. One\\nline per read pair, 8 tab-delimited columns:\\n1. canonical barcode\\n2. barcode order (\\\"ab\\\" for alpha+beta, \\\"ba\\\"\\nfor beta-alpha)\\n3. read 1 name\\n4. read 1 sequence\\n5. read 1 quality scores\\n6. read 2 name\\n7. read 2 sequence\\n8. read 2 quality scores"
    run_dot: "--version             Print the version number and exit."
  }
  output {
    File out_stdout = stdout()
  }
}