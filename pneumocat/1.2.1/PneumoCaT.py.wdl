version 1.0

task PneumoCaTpy {
  input {
    Directory? input_directory
    Int? fast_q_one
    Int? fast_q_two
    Directory? variant_database
    Directory? output_dir
    Int? threads
    File? bowtie
    File? sam_tools
    Boolean? cleanup
  }
  command <<<
    PneumoCaT_py \
      ~{if defined(input_directory) then ("--input_directory " +  '"' + input_directory + '"') else ""} \
      ~{if defined(fast_q_one) then ("--fastq_1 " +  '"' + fast_q_one + '"') else ""} \
      ~{if defined(fast_q_two) then ("--fastq_2 " +  '"' + fast_q_two + '"') else ""} \
      ~{if defined(variant_database) then ("--variant_database " +  '"' + variant_database + '"') else ""} \
      ~{if defined(output_dir) then ("--output_dir " +  '"' + output_dir + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(bowtie) then ("--bowtie " +  '"' + bowtie + '"') else ""} \
      ~{if defined(sam_tools) then ("--samtools " +  '"' + sam_tools + '"') else ""} \
      ~{if (cleanup) then "--cleanup" else ""}
  >>>
  parameter_meta {
    input_directory: "please provide the path to the directory contains the\\nfastq files [REQUIRED - OPTION 1]"
    fast_q_one: "Fastq file pair 1 [REQUIRED - OPTION 2]"
    fast_q_two: "Fastq file pair 2 [REQUIRED - OPTION 2]"
    variant_database: "variant database [OPTIONAL]; defaults to\\nstreptococcus-pneumoniae-ctvdb in the github directory"
    output_dir: "please provide an output directory [OPTIONAL]; if none\\nprovided a pneumo_capsular_typing folder will be\\ncreated in the directory containing the fastq files"
    threads: "number of threads to use [OPTIONAL]; default=4"
    bowtie: "please provide the path for bowtie2 [OPTIONAL];\\ndefaults to bowtie2"
    sam_tools: "please provide the path for samtools [OPTIONAL];\\ndefaults to samtools"
    cleanup: "if used, all bam files generated will be removed upon\\ncompletion\\n"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_dir = "${in_output_dir}"
  }
}