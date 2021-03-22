version 1.0

task FunannotateIprscan {
  input {
    Boolean? funannotate_folder_fasta
    Boolean? method
    Boolean? num
    File? out
    Boolean? debug
    Boolean? no_progress
    Boolean? cpus
    Boolean? cpus_per_chunk
    Boolean? iprs_can_path
    String arguments
  }
  command <<<
    funannotate iprscan \
      ~{arguments} \
      ~{if (funannotate_folder_fasta) then "--input" else ""} \
      ~{if (method) then "--method" else ""} \
      ~{if (num) then "--num" else ""} \
      ~{if (out) then "--out" else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if (no_progress) then "--no-progress" else ""} \
      ~{if (cpus) then "--cpus" else ""} \
      ~{if (cpus_per_chunk) then "--cpus_per_chunk" else ""} \
      ~{if (iprs_can_path) then "--iprscan_path" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/funannotate:1.8.5--pyh3252c3a_0"
  }
  parameter_meta {
    funannotate_folder_fasta: "Funannotate folder or FASTA protein file. (Required)"
    method: "Search method to use: [local, docker] (Required)"
    num: "Number of fasta files per chunk. Default: 1000"
    out: "Output XML InterProScan5 file"
    debug: "Keep intermediate files"
    no_progress: "Do not print progress to stdout for long sub jobs"
    cpus: "Number of CPUs (total). Default: 12"
    cpus_per_chunk: "Number of cpus per Docker instance. Default: 4"
    iprs_can_path: "Path to interproscan.sh. Default: which(interproscan.sh)"
    arguments: ""
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
  }
}