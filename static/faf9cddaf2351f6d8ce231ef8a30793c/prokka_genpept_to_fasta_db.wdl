version 1.0

task ProkkaGenpeptToFastaDb {
  input {
    Boolean? verbose
    String? format
    String? sep
    String? blank
    Boolean? pseudo
    Boolean? hypo
    String? min_len
  }
  command <<<
    prokka-genpept_to_fasta_db \
      ~{true="--verbose" false="" verbose} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{if defined(sep) then ("--sep " +  '"' + sep + '"') else ""} \
      ~{if defined(blank) then ("--blank " +  '"' + blank + '"') else ""} \
      ~{true="--pseudo" false="" pseudo} \
      ~{true="--hypo" false="" hypo} \
      ~{if defined(min_len) then ("--minlen " +  '"' + min_len + '"') else ""}
  >>>
  parameter_meta {
    verbose: "!      Verbose progress (default '0')."
    format: "Input format (default 'genbank')."
    sep: "Separator between EC/gene/product (default '~~~')."
    blank: "Replace empty EC/gene/product with this (default '')."
    pseudo: "!       Include /pseudo genes (default '0')."
    hypo: "!         Include 'hypothetical protein' genes (default '0')."
    min_len: "Minimum peptide length (default '0')."
  }
}