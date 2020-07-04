version 1.0

task FastaRegex.pl {
  input {
    String? motif
    File? fa
    String? name
    Boolean? bed
  }
  command <<<
    fasta_regex.pl \
      ~{if defined(motif) then ("--motif " +  '"' + motif + '"') else ""} \
      ~{if defined(fa) then ("--fa " +  '"' + fa + '"') else ""} \
      ~{if defined(name) then ("--name " +  '"' + name + '"') else ""} \
      ~{true="--bed" false="" bed}
  >>>
  parameter_meta {
    motif: ""
    fa: ""
    name: ""
    bed: ""
  }
}