version 1.0

task SmofSubseq {
  input {
    Int? n__bounds
    File? gff
    Boolean? keep
    String? color
    Boolean? annotate
    Boolean? force_color
    String input_fasta_sequence
  }
  command <<<
    smof subseq \
      ~{input_fasta_sequence} \
      ~{if defined(n__bounds) then ("-b " +  '"' + n__bounds + '"') else ""} \
      ~{if defined(gff) then ("--gff " +  '"' + gff + '"') else ""} \
      ~{if (keep) then "--keep" else ""} \
      ~{if defined(color) then ("--color " +  '"' + color + '"') else ""} \
      ~{if (annotate) then "--annotate" else ""} \
      ~{if (force_color) then "--force-color" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/smof:2.21.1--py_0"
  }
  parameter_meta {
    n__bounds: "N, --bounds N N  from and to values (indexed from 1)"
    gff: "get bounds from this gff3 file"
    keep: "With --gff, keep sequences with no matches"
    color: "color subsequence (do not extract)"
    annotate: "Append the subsequence interval to the defline"
    force_color: "print in color even to non-tty (DANGEROUS)"
    input_fasta_sequence: "input fasta sequence (default = stdin)"
  }
  output {
    File out_stdout = stdout()
  }
}