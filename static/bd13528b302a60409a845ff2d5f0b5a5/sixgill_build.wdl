version 1.0

task SixgillBuild {
  input {
    Int? minlength
    Int? min_qual_score
    String? meta_gene_file
    Int? min_meta_gene_score
    Int? minor_f_length
    Int? min_longest_tryp_peple_n
    Int? max_reads
    Int? min_read_count
    String? out
    String? out_fast_a
    Boolean? no_gzip_out
    Boolean? debug
  }
  command <<<
    sixgill_build \
      ~{if defined(minlength) then ("--minlength " +  '"' + minlength + '"') else ""} \
      ~{if defined(min_qual_score) then ("--minqualscore " +  '"' + min_qual_score + '"') else ""} \
      ~{if defined(meta_gene_file) then ("--metagenefile " +  '"' + meta_gene_file + '"') else ""} \
      ~{if defined(min_meta_gene_score) then ("--minmetagenescore " +  '"' + min_meta_gene_score + '"') else ""} \
      ~{if defined(minor_f_length) then ("--minorflength " +  '"' + minor_f_length + '"') else ""} \
      ~{if defined(min_longest_tryp_peple_n) then ("--minlongesttryppeplen " +  '"' + min_longest_tryp_peple_n + '"') else ""} \
      ~{if defined(max_reads) then ("--maxreads " +  '"' + max_reads + '"') else ""} \
      ~{if defined(min_read_count) then ("--minreadcount " +  '"' + min_read_count + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if defined(out_fast_a) then ("--outfasta " +  '"' + out_fast_a + '"') else ""} \
      ~{true="--nogzipout" false="" no_gzip_out} \
      ~{true="--debug" false="" debug}
  >>>
  parameter_meta {
    minlength: "min AA length of a metapeptide"
    min_qual_score: "min base-call phred score across any NT in a metapeptide"
    meta_gene_file: "input MetaGene Annotator output file. Records must be in same linear order as reads in fastqfiles"
    min_meta_gene_score: "minimum MetaGene score"
    minor_f_length: "min length of ORF-portion"
    min_longest_tryp_peple_n: "minimum length of the longest tryptic peptide"
    max_reads: "stop early if we hit this many reads"
    min_read_count: "minimum read count"
    out: "Output metapeptide database file"
    out_fast_a: "Output metapeptide fasta database file"
    no_gzip_out: "Write plaintetxt (non-gzipped) output (default gzipped)"
    debug: "Enable debug logging"
  }
}