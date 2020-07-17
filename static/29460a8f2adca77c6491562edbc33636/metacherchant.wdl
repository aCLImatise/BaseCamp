version 1.0

task Metacherchant.sh {
  input {
    String? kmer_size_mandatory
    String? seq
    String? output_directory_mandatory
    String? memory
    String? work_dir
    Boolean? continue
    Boolean? force
    String? launch_options
    String? input_parameters
  }
  command <<<
    metacherchant.sh \
      ~{launch_options} \
      ~{input_parameters} \
      ~{if defined(kmer_size_mandatory) then ("--k " +  '"' + kmer_size_mandatory + '"') else ""} \
      ~{if defined(seq) then ("--seq " +  '"' + seq + '"') else ""} \
      ~{if defined(output_directory_mandatory) then ("--output " +  '"' + output_directory_mandatory + '"') else ""} \
      ~{if defined(memory) then ("--memory " +  '"' + memory + '"') else ""} \
      ~{if defined(work_dir) then ("--work-dir " +  '"' + work_dir + '"') else ""} \
      ~{true="--continue" false="" continue} \
      ~{true="--force" false="" force}
  >>>
  parameter_meta {
    kmer_size_mandatory: "k-mer size (MANDATORY)"
    seq: "FASTA file with sequences (MANDATORY)"
    output_directory_mandatory: "output directory (MANDATORY)"
    memory: "memory to use (for example: 1500M, 4G, etc.) (optional, default: 2 Gb)"
    work_dir: "working directory (optional, default: workDir)"
    continue: "continue the previous run from last succeed stage, saved in working directory (optional)"
    force: "force run with rewriting old results (optional)"
    launch_options: ""
    input_parameters: ""
  }
}