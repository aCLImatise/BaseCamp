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
  }
  command <<<
    align_families_py \
      ~{read_families_dot_tsv} \
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
    docker: "quay.io/biocontainers/dunovo:2.16--py39h38f01e4_0"
  }
  parameter_meta {
    aligner: "The multiple sequence aligner to use. Default: kalign"
    no_check_ids: "Don't check to make sure read pairs have identical ids. By default, if this encounters a pair of reads in families.tsv with ids that aren't identical (minus an ending /1 or /2), it will throw an error."
    processes: "Number of worker subprocesses to use. If 0, no subprocesses will be started and everything will be done inside one process. Give \\\"auto\\\" to use as many processes as there are CPU cores. Default: 0."
    queue_size: "How long to go accumulating responses from worker subprocesses before dealing with all of them. Default: 8 * the number of worker --processes."
    phone_home: "Report helpful usage data to the developer, to better understand the use cases and performance of the tool. The only data which will be recorded is the name and version of the tool, the size of the input data, the time and memory taken to process it, and the IP address of the machine running it. Also, if the script fails, it will report the name of the exception thrown and the line of code it occurred in. No filenames are sent, and the only parameters reported are --aligner, --processes, and --queue-size, which are necessary to evaluate performance. All the reporting and recording code is available at https://github.com/NickSto/ET."
    galaxy: "Tell the script it's running on Galaxy. Currently this only affects data reported when phoning home."
    test: "If reporting usage data, mark this as a test run."
    log_file: "Print log messages to this file instead of to stderr. NOTE: Will overwrite the file."
    read_families_dot_tsv: "The input reads, sorted into families. One line per read pair, 8 tab-delimited columns:\\n1. canonical barcode\\n2. barcode order (\\\"ab\\\" for alpha+beta, \\\"ba\\\" for beta-alpha)\\n3. read 1 name\\n4. read 1 sequence\\n5. read 1 quality scores\\n6. read 2 name\\n7. read 2 sequence\\n8. read 2 quality scores"
  }
  output {
    File out_stdout = stdout()
  }
}