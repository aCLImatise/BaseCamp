version 1.0

task StrlingIndex {
  input {
    File? genome_repeats
    String? proportion_repeat
    String fast_a
  }
  command <<<
    strling index \
      ~{fast_a} \
      ~{if defined(genome_repeats) then ("--genome-repeats " +  '"' + genome_repeats + '"') else ""} \
      ~{if defined(proportion_repeat) then ("--proportion-repeat " +  '"' + proportion_repeat + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/strling:0.4.2--hbeb723e_0"
  }
  parameter_meta {
    genome_repeats: "optional path to output genome repeats file. if it does not exist, it will be created (default: ./<FASTA>.str)"
    proportion_repeat: "proportion of read that is repetitive to be considered as STR (default: 0.8)"
    fast_a: "path to fasta file"
  }
  output {
    File out_stdout = stdout()
    File out_genome_repeats = "${in_genome_repeats}"
  }
}