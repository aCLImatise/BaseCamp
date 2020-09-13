version 1.0

task ProkkagenbankToFastaDb {
  input {
    Boolean? verbose
    String? format
    String? id_tag
    String? sep
    String? blank
    Boolean? pseudo
    Boolean? hypo
    Int? g_code
    Int? min_len
  }
  command <<<
    prokka_genbank_to_fasta_db \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{if defined(id_tag) then ("--idtag " +  '"' + id_tag + '"') else ""} \
      ~{if defined(sep) then ("--sep " +  '"' + sep + '"') else ""} \
      ~{if defined(blank) then ("--blank " +  '"' + blank + '"') else ""} \
      ~{if (pseudo) then "--pseudo" else ""} \
      ~{if (hypo) then "--hypo" else ""} \
      ~{if defined(g_code) then ("--gcode " +  '"' + g_code + '"') else ""} \
      ~{if defined(min_len) then ("--minlen " +  '"' + min_len + '"') else ""}
  >>>
  parameter_meta {
    verbose: "!      Verbose progress (default '0')."
    format: "Input format (default 'genbank')."
    id_tag: "What tag to use as Fasta ID (default = try first of: protein_id locus_tag db_xref) (default '')."
    sep: "Separator between EC/gene/product (default '~~~')."
    blank: "Replace empty EC/gene/product with this (default '')."
    pseudo: "!       Include /pseudo genes (default '0')."
    hypo: "!         Include 'hypothetical protein' genes (default '0')."
    g_code: "Force this genetic code for translation (otherwise /transl_table) (default '0')."
    min_len: "Minimum peptide length (default '0')."
  }
  output {
    File out_stdout = stdout()
  }
}