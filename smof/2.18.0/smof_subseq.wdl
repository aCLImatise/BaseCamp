version 1.0

task SmofSubseq {
  input {
    Int? n__bounds
    File? gff
    Boolean? keep
    String? color
    Boolean? force_color
    String input_fasta_default
  }
  command <<<
    smof subseq \
      ~{input_fasta_default} \
      ~{if defined(n__bounds) then ("-b " +  '"' + n__bounds + '"') else ""} \
      ~{if defined(gff) then ("--gff " +  '"' + gff + '"') else ""} \
      ~{if (keep) then "--keep" else ""} \
      ~{if defined(color) then ("--color " +  '"' + color + '"') else ""} \
      ~{if (force_color) then "--force-color" else ""}
  >>>
  parameter_meta {
    n__bounds: "N, --bounds N N  from and to values (indexed from 1)"
    gff: "get bounds from this gff3 file"
    keep: "With --gff, keep sequences with no matches"
    color: "color subsequence (do not extract)"
    force_color: "print in color even to non-tty (DANGEROUS)"
    input_fasta_default: "input fasta sequence (default = stdin)"
  }
  output {
    File out_stdout = stdout()
  }
}