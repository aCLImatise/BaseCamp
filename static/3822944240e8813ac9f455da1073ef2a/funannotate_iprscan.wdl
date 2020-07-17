version 1.0

task FunannotateIprscan {
  input {
    Boolean? funannotate_folder_fasta
    Boolean? method
    Boolean? num
    Boolean? out
    Boolean? debug
    Boolean? cpus
    Boolean? cpus_per_chunk
    Boolean? iprs_can_path
    String arguments
  }
  command <<<
    funannotate iprscan \
      ~{arguments} \
      ~{true="--input" false="" funannotate_folder_fasta} \
      ~{true="--method" false="" method} \
      ~{true="--num" false="" num} \
      ~{true="--out" false="" out} \
      ~{true="--debug" false="" debug} \
      ~{true="--cpus" false="" cpus} \
      ~{true="--cpus_per_chunk" false="" cpus_per_chunk} \
      ~{true="--iprscan_path" false="" iprs_can_path}
  >>>
  parameter_meta {
    funannotate_folder_fasta: "Funannotate folder or FASTA protein file. (Required)"
    method: "Search method to use: [local, docker] (Required)"
    num: "Number of fasta files per chunk. Default: 1000"
    out: "Output XML InterProScan5 file"
    debug: "Keep intermediate files"
    cpus: "Number of CPUs (total). Default: 12     "
    cpus_per_chunk: "Number of cpus per Docker instance. Default: 4"
    iprs_can_path: "Path to interproscan.sh. Default: which(interproscan.sh)"
    arguments: ""
  }
}