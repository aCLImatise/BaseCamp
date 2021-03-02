version 1.0

task SixgillFilter {
  input {
    File? out
    Int? minor_f_length
    Int? mina_a_seq_length
    Int? min_read_count
    Int? min_qual_score
    Int? min_longest_tryp_peple_n
    Int? min_meta_gene_score
    Int? max_meta_peptides
    Boolean? no_gzip_out
    Boolean? debug
  }
  command <<<
    sixgill_filter \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if defined(minor_f_length) then ("--minorflength " +  '"' + minor_f_length + '"') else ""} \
      ~{if defined(mina_a_seq_length) then ("--minaaseqlength " +  '"' + mina_a_seq_length + '"') else ""} \
      ~{if defined(min_read_count) then ("--minreadcount " +  '"' + min_read_count + '"') else ""} \
      ~{if defined(min_qual_score) then ("--minqualscore " +  '"' + min_qual_score + '"') else ""} \
      ~{if defined(min_longest_tryp_peple_n) then ("--minlongesttryppeplen " +  '"' + min_longest_tryp_peple_n + '"') else ""} \
      ~{if defined(min_meta_gene_score) then ("--minmetagenescore " +  '"' + min_meta_gene_score + '"') else ""} \
      ~{if defined(max_meta_peptides) then ("--maxmetapeptides " +  '"' + max_meta_peptides + '"') else ""} \
      ~{if (no_gzip_out) then "--nogzipout" else ""} \
      ~{if (debug) then "--debug" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    out: "output metapeptide database file"
    minor_f_length: "minimum ORF length"
    mina_a_seq_length: "minimum AA sequence length"
    min_read_count: "minimum read count"
    min_qual_score: "minimum basecall quality"
    min_longest_tryp_peple_n: "minimum length of the longest tryptic peptide"
    min_meta_gene_score: "Minimum MetaGene score (-1 for none)"
    max_meta_peptides: "maximum number of metapeptides to write"
    no_gzip_out: "Write plaintetxt (non-gzipped) output (default\\ngzipped)"
    debug: "Enable debug logging"
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
  }
}