version 1.0

task Illumiprocessor {
  input {
    Directory? input_directory_trim
    Directory? output_directory_createdefault
    File? config
    File? trim_mo_matic
    Int? min_len
    Boolean? no_merge
    Int? cores
    Int? r_one_pattern
    Int? r_two_pattern
    Boolean? se
    String? phred
    File? log_path
    String? verbosity
  }
  command <<<
    illumiprocessor \
      ~{if defined(input_directory_trim) then ("--input " +  '"' + input_directory_trim + '"') else ""} \
      ~{if defined(output_directory_createdefault) then ("--output " +  '"' + output_directory_createdefault + '"') else ""} \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{if defined(trim_mo_matic) then ("--trimmomatic " +  '"' + trim_mo_matic + '"') else ""} \
      ~{if defined(min_len) then ("--min-len " +  '"' + min_len + '"') else ""} \
      ~{if (no_merge) then "--no-merge" else ""} \
      ~{if defined(cores) then ("--cores " +  '"' + cores + '"') else ""} \
      ~{if defined(r_one_pattern) then ("--r1-pattern " +  '"' + r_one_pattern + '"') else ""} \
      ~{if defined(r_two_pattern) then ("--r2-pattern " +  '"' + r_two_pattern + '"') else ""} \
      ~{if (se) then "--se" else ""} \
      ~{if defined(phred) then ("--phred " +  '"' + phred + '"') else ""} \
      ~{if defined(log_path) then ("--log-path " +  '"' + log_path + '"') else ""} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/illumiprocessor:2.10--py_0"
  }
  parameter_meta {
    input_directory_trim: "The input directory of raw reads to trim. (default:\\nNone)"
    output_directory_createdefault: "The output directory of clean reads to create.\\n(default: None)"
    config: "A configuration file containing the tag:sample mapping\\nand renaming options. (default: None)"
    trim_mo_matic: "The path to the trimmomatic-0.XX.jar file. (default:\\n/usr/local/bin/trimmomatic)"
    min_len: "The minimum length of reads to keep. (default: 40)"
    no_merge: "When trimming PE reads, do not merge singleton files.\\n(default: False)"
    cores: "Number of compute cores to use. (default: 1)"
    r_one_pattern: "An optional regex pattern to find R1 reads. (default:\\nNone)"
    r_two_pattern: "An optional regex pattern to find R2 reads. (default:\\nNone)"
    se: "Single-end reads. (default: False)"
    phred: "The type of fastq encoding used. (default: phred33)"
    log_path: "The path to a directory to hold logs. (default: None)"
    verbosity: "The logging level to use. (default: INFO)\\n"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_directory_createdefault = "${in_output_directory_createdefault}"
  }
}