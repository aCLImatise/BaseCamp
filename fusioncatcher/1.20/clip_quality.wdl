version 1.0

task ClipQuality.py {
  input {
    String? input_fastq_file
    String? output_fastq_file
    String? log
    String? length
    String? threshold
    String? score_type
    String? author
    Boolean? quiet
    String? processes
  }
  command <<<
    clip_quality.py \
      ~{if defined(input_fastq_file) then ("--input " +  '"' + input_fastq_file + '"') else ""} \
      ~{if defined(output_fastq_file) then ("--output " +  '"' + output_fastq_file + '"') else ""} \
      ~{if defined(log) then ("--log " +  '"' + log + '"') else ""} \
      ~{if defined(length) then ("--length " +  '"' + length + '"') else ""} \
      ~{if defined(threshold) then ("--threshold " +  '"' + threshold + '"') else ""} \
      ~{if defined(score_type) then ("--score-type " +  '"' + score_type + '"') else ""} \
      ~{if defined(author) then ("--author " +  '"' + author + '"') else ""} \
      ~{true="--quiet" false="" quiet} \
      ~{if defined(processes) then ("--processes " +  '"' + processes + '"') else ""}
  >>>
  parameter_meta {
    input_fastq_file: "The input FASTQ file."
    output_fastq_file: "The output FASTQ file contained the clipped reads."
    log: "It outputs a detailed log."
    length: "Number of consecutive nucleotides with the quality scores below or equal the given threshold. Default is 4."
    threshold: "The quality score below (or equal) the nucleotides are considered low quality and will be trimmed (for example 10 for Q10). Default is 5."
    score_type: "The quality score system used. The choices are SOLEXA or SANGER. Default is solexa."
    author: "Daniel Nicorici, E-mail: Daniel.Nicorici@gmail.com"
    quiet: "Do not print status messages to console."
    processes: "Number of parallel processes/CPUs to be used for computations. In case of value 0 then the program will use all the CPUs which are found. The default value is 0."
  }
}