version 1.0

task RunECC.sh {
  input {
    Boolean? ins
    Boolean? in_one
    Boolean? in_two
    Boolean? inp
    Boolean? output_directory_pathdefault
    Boolean? output_filename_prefixdefault
    Boolean? maximum_memory_used
    Boolean? number_threads_default
    String run_disco_dots_h
    String? option
  }
  command <<<
    runECC.sh \
      ~{run_disco_dots_h} \
      ~{option} \
      ~{true="-inS" false="" ins} \
      ~{true="-in1" false="" in_one} \
      ~{true="-in2" false="" in_two} \
      ~{true="-inP" false="" inp} \
      ~{true="-d" false="" output_directory_pathdefault} \
      ~{true="-o" false="" output_filename_prefixdefault} \
      ~{true="-m" false="" maximum_memory_used} \
      ~{true="-n" false="" number_threads_default}
  >>>
  parameter_meta {
    ins: "single read filenames (comma separated fasta/fastq/fastq.gz files)."
    in_one: "forward paired read filename (single fasta/fastq/fastq.gz file)."
    in_two: "reverse paired read filename (single fasta/fastq/fastq.gz file)."
    inp: "interleaved paired read filenames (comma separated fasta/fastq/fastq.gz files)."
    output_directory_pathdefault: "output directory path.(DEFAULT: current directory)"
    output_filename_prefixdefault: "output filename prefix.(DEFAULT: disco)"
    maximum_memory_used: "maximum memory to be used (DEFAULT: 15 GB)."
    number_threads_default: "number of threads (DEFAULT: 8)."
    run_disco_dots_h: ""
    option: ""
  }
}