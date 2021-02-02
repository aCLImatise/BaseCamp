version 1.0

task SixgillBuild {
  input {
    String? meta_gene_file
    Int? minlength
    Int? min_qual_score
    Int? min_meta_gene_score
    Int? minor_f_length
    Int? min_longest_tryp_peple_n
    Int? max_reads
    Int? min_read_count
    File? out
    File? out_fast_a
    Boolean? no_gzip_out
    Boolean? debug
  }
  command <<<
    sixgill_build \
      ~{if defined(meta_gene_file) then ("--metagenefile " +  '"' + meta_gene_file + '"') else ""} \
      ~{if defined(minlength) then ("--minlength " +  '"' + minlength + '"') else ""} \
      ~{if defined(min_qual_score) then ("--minqualscore " +  '"' + min_qual_score + '"') else ""} \
      ~{if defined(min_meta_gene_score) then ("--minmetagenescore " +  '"' + min_meta_gene_score + '"') else ""} \
      ~{if defined(minor_f_length) then ("--minorflength " +  '"' + minor_f_length + '"') else ""} \
      ~{if defined(min_longest_tryp_peple_n) then ("--minlongesttryppeplen " +  '"' + min_longest_tryp_peple_n + '"') else ""} \
      ~{if defined(max_reads) then ("--maxreads " +  '"' + max_reads + '"') else ""} \
      ~{if defined(min_read_count) then ("--minreadcount " +  '"' + min_read_count + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if defined(out_fast_a) then ("--outfasta " +  '"' + out_fast_a + '"') else ""} \
      ~{if (no_gzip_out) then "--nogzipout" else ""} \
      ~{if (debug) then "--debug" else ""}
  >>>
  parameter_meta {
    meta_gene_file: "specified, start with the output of MetaGene Annotator"
    minlength: "min AA length of a metapeptide"
    min_qual_score: "min base-call phred score across any NT in a\\nmetapeptide"
    min_meta_gene_score: "minimum MetaGene score"
    minor_f_length: "min length of ORF-portion"
    min_longest_tryp_peple_n: "minimum length of the longest tryptic peptide"
    max_reads: "stop early if we hit this many reads"
    min_read_count: "minimum read count"
    out: "Output metapeptide database file"
    out_fast_a: "Output metapeptide fasta database file"
    no_gzip_out: "Write plaintetxt (non-gzipped) output (default\\ngzipped)"
    debug: "Enable debug logging"
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
    File out_out_fast_a = "${in_out_fast_a}"
  }
}