version 1.0

task SeqSero2Package.py {
  input {
    Array[String] string_pathtoinputdata
    String? int_nanopore_fastq
    String? string_algorithms_bwa
    String? int_number_threads
    String? string_workflow_apply
    String? string_optional_specify_sample_name
    String? string_optional_specify_output_name
    Boolean? flag_flagged_only
    Boolean? flag_flagged_not
    Boolean? check
  }
  command <<<
    SeqSero2_package.py \
      ~{if defined(string_pathtoinputdata) then ("-i " +  '"' + string_pathtoinputdata + '"') else ""} \
      ~{if defined(int_nanopore_fastq) then ("-t " +  '"' + int_nanopore_fastq + '"') else ""} \
      ~{if defined(string_algorithms_bwa) then ("-b " +  '"' + string_algorithms_bwa + '"') else ""} \
      ~{if defined(int_number_threads) then ("-p " +  '"' + int_number_threads + '"') else ""} \
      ~{if defined(string_workflow_apply) then ("-m " +  '"' + string_workflow_apply + '"') else ""} \
      ~{if defined(string_optional_specify_sample_name) then ("-n " +  '"' + string_optional_specify_sample_name + '"') else ""} \
      ~{if defined(string_optional_specify_output_name) then ("-d " +  '"' + string_optional_specify_output_name + '"') else ""} \
      ~{true="-c" false="" flag_flagged_only} \
      ~{true="-s" false="" flag_flagged_not} \
      ~{true="--check" false="" check}
  >>>
  parameter_meta {
    string_pathtoinputdata: "<string>: path/to/input_data"
    int_nanopore_fastq: "<int>: '1' for interleaved paired-end reads, '2' for separated paired-end reads, '3' for single reads, '4' for genome assembly, '5' for nanopore fasta, '6' for nanopore fastq"
    string_algorithms_bwa: "<string>: algorithms for bwa mapping for allele mode; 'mem' for mem, 'sam' for samse/sampe; default=mem; optional; for now we only optimized for default 'mem' mode"
    int_number_threads: "<int>: number of threads for allele mode, if p >4, only 4 threads will be used for assembly since the amount of extracted reads is small, default=1"
    string_workflow_apply: "<string>: which workflow to apply, 'a'(raw reads allele micro-assembly), 'k'(raw reads and genome assembly k-mer), default=a"
    string_optional_specify_sample_name: "<string>: optional, to specify a sample name in the report output"
    string_optional_specify_output_name: "<string>: optional, to specify an output directory name, if not set, the output directory would be 'SeqSero_result_'+time stamp+one random number"
    flag_flagged_only: "<flag>: if '-c' was flagged, SeqSero2 will only output serotype prediction without the directory containing log files"
    flag_flagged_not: "<flag>: if '-s' was flagged, SeqSero2 will not output header in SeqSero_result.tsv"
    check: "<flag>: use '--check' flag to check the required dependencies"
  }
}