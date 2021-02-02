version 1.0

task AmptkDatabase {
  input {
    Boolean? fast_a
    Boolean? out
    Boolean? fwd_primer
    Boolean? rev_primer
    Boolean? format
    Boolean? drop_ns
    Boolean? create_db
    Boolean? skip_trimming
    Boolean? de_rep_full_length
    Boolean? lca
    Boolean? min_len
    Boolean? max_len
    Boolean? trunc_len
    Boolean? subsample
    Boolean? primer_mismatch
    Boolean? primer_required
    Boolean? u_tax_train_levels
    Boolean? u_tax_split_levels
    Boolean? cpus
    Boolean? install
    Boolean? u_search
    String arguments
  }
  command <<<
    amptk database \
      ~{arguments} \
      ~{if (fast_a) then "--fasta" else ""} \
      ~{if (out) then "--out" else ""} \
      ~{if (fwd_primer) then "--fwd_primer" else ""} \
      ~{if (rev_primer) then "--rev_primer" else ""} \
      ~{if (format) then "--format" else ""} \
      ~{if (drop_ns) then "--drop_ns" else ""} \
      ~{if (create_db) then "--create_db" else ""} \
      ~{if (skip_trimming) then "--skip_trimming" else ""} \
      ~{if (de_rep_full_length) then "--derep_fulllength" else ""} \
      ~{if (lca) then "--lca" else ""} \
      ~{if (min_len) then "--min_len" else ""} \
      ~{if (max_len) then "--max_len" else ""} \
      ~{if (trunc_len) then "--trunclen" else ""} \
      ~{if (subsample) then "--subsample" else ""} \
      ~{if (primer_mismatch) then "--primer_mismatch" else ""} \
      ~{if (primer_required) then "--primer_required" else ""} \
      ~{if (u_tax_train_levels) then "--utax_trainlevels" else ""} \
      ~{if (u_tax_split_levels) then "--utax_splitlevels" else ""} \
      ~{if (cpus) then "--cpus" else ""} \
      ~{if (install) then "--install" else ""} \
      ~{if (u_search) then "--usearch" else ""}
  >>>
  parameter_meta {
    fast_a: "Input FASTA file"
    out: "Base name for output files, i.e. ITS2"
    fwd_primer: "Forward primer. Default: fITS7"
    rev_primer: "Reverse primer. Default: ITS4"
    format: "Reformat FASTA headers to UTAX format. Default: unite2utax [unite2utax, rdp2utax, off]"
    drop_ns: "Removal sequences that have > x N's. Default: 8"
    create_db: "Create a DB. Default: usearch [utax, usearch, sintax]"
    skip_trimming: "Keep full length sequences. Default: off"
    de_rep_full_length: "Remove identical sequences."
    lca: "Run LCA (last common ancestor) on taxonomy if dereplicating sequences."
    min_len: "Minimum length to keep. Default: 100"
    max_len: "Maximum length to keep. Default: 1200"
    trunc_len: "Truncate records to length."
    subsample: "Random subsample reads."
    primer_mismatch: "Max Primer Mismatch. Default: 2"
    primer_required: "Keep Sequence if primer found. Default: for [for,rev,none]"
    u_tax_train_levels: "UTAX custom parameters. Default: kpcofgs"
    u_tax_split_levels: "UTAX custom parameters. Default: NVkpcofgs"
    cpus: "Number of CPUs to use. Default: all"
    install: "Install into AMPtk Database"
    u_search: "USEARCH executable. Default: usearch9"
    arguments: ""
  }
  output {
    File out_stdout = stdout()
  }
}