version 1.0

task SmofSubseq {
  input {
    String? n__bounds
    File? gff
    Boolean? keep
    String? color
    Boolean? force_color
    String input_fasta_sequence
  }
  command <<<
    smof subseq \
      ~{input_fasta_sequence} \
      ~{if defined(n__bounds) then ("-b " +  '"' + n__bounds + '"') else ""} \
      ~{if defined(gff) then ("--gff " +  '"' + gff + '"') else ""} \
      ~{true="--keep" false="" keep} \
      ~{if defined(color) then ("--color " +  '"' + color + '"') else ""} \
      ~{true="--force-color" false="" force_color}
  >>>
  parameter_meta {
    n__bounds: "N, --bounds N N  from and to values (indexed from 1)"
    gff: "get bounds from this gff3 file"
    keep: "With --gff, keep sequences with no matches"
    color: "color subsequence (do not extract)"
    force_color: "print in color even to non-tty (DANGEROUS)"
    input_fasta_sequence: "input fasta sequence (default = stdin)"
  }
}