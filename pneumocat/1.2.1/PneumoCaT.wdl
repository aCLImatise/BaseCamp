version 1.0

task PneumoCaT.py {
  input {
    String? input_directory
    String? fast_q_one
    String? fast_q_two
    String? variant_database
    String? output_dir
    String? threads
    String? bowtie
    String? sam_tools
    Boolean? cleanup
  }
  command <<<
    PneumoCaT.py \
      ~{if defined(input_directory) then ("--input_directory " +  '"' + input_directory + '"') else ""} \
      ~{if defined(fast_q_one) then ("--fastq_1 " +  '"' + fast_q_one + '"') else ""} \
      ~{if defined(fast_q_two) then ("--fastq_2 " +  '"' + fast_q_two + '"') else ""} \
      ~{if defined(variant_database) then ("--variant_database " +  '"' + variant_database + '"') else ""} \
      ~{if defined(output_dir) then ("--output_dir " +  '"' + output_dir + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(bowtie) then ("--bowtie " +  '"' + bowtie + '"') else ""} \
      ~{if defined(sam_tools) then ("--samtools " +  '"' + sam_tools + '"') else ""} \
      ~{true="--cleanup" false="" cleanup}
  >>>
  parameter_meta {
    input_directory: "please provide the path to the directory contains the fastq files [REQUIRED - OPTION 1]"
    fast_q_one: "Fastq file pair 1 [REQUIRED - OPTION 2]"
    fast_q_two: "Fastq file pair 2 [REQUIRED - OPTION 2]"
    variant_database: "variant database [OPTIONAL]; defaults to streptococcus-pneumoniae-ctvdb in the github directory"
    output_dir: "please provide an output directory [OPTIONAL]; if none provided a pneumo_capsular_typing folder will be created in the directory containing the fastq files"
    threads: "number of threads to use [OPTIONAL]; default=4"
    bowtie: "please provide the path for bowtie2 [OPTIONAL]; defaults to bowtie2"
    sam_tools: "please provide the path for samtools [OPTIONAL]; defaults to samtools"
    cleanup: "if used, all bam files generated will be removed upon completion"
  }
}