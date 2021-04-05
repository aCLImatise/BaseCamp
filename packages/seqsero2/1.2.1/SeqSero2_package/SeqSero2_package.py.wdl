version 1.0

task SeqSero2Packagepy {
  input {
    Array[String] string_pathtoinputdata
    String? int_forseparated_pairedend
    String? string_algorithms_bwa
    Int? int_number_threads
    String? string_workflow_apply
    String? string_optional_specify
    Directory? flag_flagged_only
    Boolean? flag_flagged_not
    Boolean? check
    Directory? d
    Float v_one_dot_two_dot_one
    String d_string_optional
    String dependencies
  }
  command <<<
    SeqSero2_package_py \
      ~{v_one_dot_two_dot_one} \
      ~{d_string_optional} \
      ~{dependencies} \
      ~{if defined(string_pathtoinputdata) then ("-i " +  '"' + string_pathtoinputdata + '"') else ""} \
      ~{if defined(int_forseparated_pairedend) then ("-t " +  '"' + int_forseparated_pairedend + '"') else ""} \
      ~{if defined(string_algorithms_bwa) then ("-b " +  '"' + string_algorithms_bwa + '"') else ""} \
      ~{if defined(int_number_threads) then ("-p " +  '"' + int_number_threads + '"') else ""} \
      ~{if defined(string_workflow_apply) then ("-m " +  '"' + string_workflow_apply + '"') else ""} \
      ~{if defined(string_optional_specify) then ("-n " +  '"' + string_optional_specify + '"') else ""} \
      ~{if (flag_flagged_only) then "-c" else ""} \
      ~{if (flag_flagged_not) then "-s" else ""} \
      ~{if (check) then "--check" else ""} \
      ~{if defined(d) then ("-d " +  '"' + d + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/seqsero2:1.2.1--py_0"
  }
  parameter_meta {
    string_pathtoinputdata: "<string>: path/to/input_data"
    int_forseparated_pairedend: "<int>: '1' for interleaved paired-end reads, '2' for\\nseparated paired-end reads, '3' for single reads, '4' for\\ngenome assembly, '5' for nanopore reads (fasta/fastq)"
    string_algorithms_bwa: "<string>: algorithms for bwa mapping for allele mode; 'mem'\\nfor mem, 'sam' for samse/sampe; default=mem; optional; for\\nnow we only optimized for default 'mem' mode"
    int_number_threads: "<int>: number of threads for allele mode, if p >4, only 4\\nthreads will be used for assembly since the amount of\\nextracted reads is small, default=1"
    string_workflow_apply: "<string>: which workflow to apply, 'a'(raw reads allele\\nmicro-assembly), 'k'(raw reads and genome assembly k-mer),\\ndefault=a"
    string_optional_specify: "<string>: optional, to specify a sample name in the report"
    flag_flagged_only: "<flag>: if '-c' was flagged, SeqSero2 will only output\\nserotype prediction without the directory containing log\\nfiles"
    flag_flagged_not: "<flag>: if '-s' was flagged, SeqSero2 will not output header\\nin SeqSero_result.tsv"
    check: "<flag>: use '--check' flag to check the required"
    d: ""
    v_one_dot_two_dot_one: "optional arguments:"
    d_string_optional: "-d D            <string>: optional, to specify an output directory name, if"
    dependencies: "-v, --version   show program's version number and exit"
  }
  output {
    File out_stdout = stdout()
    Directory out_flag_flagged_only = "${in_flag_flagged_only}"
    Directory out_d = "${in_d}"
  }
}