version 1.0

task RunECCsh {
  input {
    Boolean? ins
    Boolean? in_one
    Boolean? in_two
    Boolean? inp
    File? output_directory_directory
    File? output_filename_prefixdefault
    Boolean? maximum_memory_used
    Boolean? number_threads_default
    String run_disco_dots_h
  }
  command <<<
    runECC_sh \
      ~{run_disco_dots_h} \
      ~{if (ins) then "-inS" else ""} \
      ~{if (in_one) then "-in1" else ""} \
      ~{if (in_two) then "-in2" else ""} \
      ~{if (inp) then "-inP" else ""} \
      ~{if (output_directory_directory) then "-d" else ""} \
      ~{if (output_filename_prefixdefault) then "-o" else ""} \
      ~{if (maximum_memory_used) then "-m" else ""} \
      ~{if (number_threads_default) then "-n" else ""}
  >>>
  parameter_meta {
    ins: "single read filenames (comma separated fasta/fastq/fastq.gz files)."
    in_one: "forward paired read filename (single fasta/fastq/fastq.gz file)."
    in_two: "reverse paired read filename (single fasta/fastq/fastq.gz file)."
    inp: "interleaved paired read filenames (comma separated fasta/fastq/fastq.gz files)."
    output_directory_directory: "output directory path.(DEFAULT: current directory)"
    output_filename_prefixdefault: "output filename prefix.(DEFAULT: disco)"
    maximum_memory_used: "maximum memory to be used (DEFAULT: 15 GB)."
    number_threads_default: "number of threads (DEFAULT: )."
    run_disco_dots_h: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_directory_directory = "${in_output_directory_directory}"
    File out_output_filename_prefixdefault = "${in_output_filename_prefixdefault}"
  }
}