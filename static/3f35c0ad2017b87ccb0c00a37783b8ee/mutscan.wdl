version 1.0

task Mutscan {
  input {
    Boolean? read_one
    Boolean? read_two
    Boolean? mutation
    Boolean? ref
    Boolean? json
    Boolean? thread
    Boolean? support
    Boolean? mark
    Boolean? legacy
    File? standalone
    Boolean? simplified
    Boolean? verbose
  }
  command <<<
    mutscan \
      ~{if (read_one) then "--read1" else ""} \
      ~{if (read_two) then "--read2" else ""} \
      ~{if (mutation) then "--mutation" else ""} \
      ~{if (ref) then "--ref" else ""} \
      ~{if (json) then "--json" else ""} \
      ~{if (thread) then "--thread" else ""} \
      ~{if (support) then "--support" else ""} \
      ~{if (mark) then "--mark" else ""} \
      ~{if (legacy) then "--legacy" else ""} \
      ~{if (standalone) then "--standalone" else ""} \
      ~{if (simplified) then "--simplified" else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    read_one: "read1 file name (string)"
    read_two: "read2 file name (string [=])"
    mutation: "mutation file name, can be a CSV format or a VCF format (string [=])"
    ref: "reference fasta file name (only needed when mutation file is a VCF) (string [=])"
    json: "filename of JSON report, default is no JSON report (string [=])"
    thread: "worker thread number, default is 4 (int [=4])"
    support: "min read support for reporting a mutation, default is 2 (int [=2])"
    mark: "when mutation file is a vcf file, --mark means only process the records with FILTER column is M"
    legacy: "use legacy mode, usually much slower but may be able to find a little more reads in certain case"
    standalone: "output standalone HTML report with single file. Don't use this option when scanning too many target mutations (i.e. >1000 mutations)"
    simplified: "simplified mode uses less RAM but reports less information. This option can be auto/on/off, by default it's auto, which means automatically enabled when processing large FASTQ with large VCF. (string [=auto])"
    verbose: "enable verbose mode, more information will be output in STDERR"
  }
  output {
    File out_stdout = stdout()
    File out_standalone = "${in_standalone}"
  }
}