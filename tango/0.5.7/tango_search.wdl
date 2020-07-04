version 1.0

task TangoSearch {
  input {
    String? mode
    String? cpus
    String? block_size
    String? chunks
    String? top
    String? evalue
    Int? min_len
    String? tmpdir
    String query
    String dbfile
    String outfile
  }
  command <<<
    tango search \
      ~{query} \
      ~{dbfile} \
      ~{outfile} \
      ~{if defined(mode) then ("--mode " +  '"' + mode + '"') else ""} \
      ~{if defined(cpus) then ("--cpus " +  '"' + cpus + '"') else ""} \
      ~{if defined(block_size) then ("--blocksize " +  '"' + block_size + '"') else ""} \
      ~{if defined(chunks) then ("--chunks " +  '"' + chunks + '"') else ""} \
      ~{if defined(top) then ("--top " +  '"' + top + '"') else ""} \
      ~{if defined(evalue) then ("--evalue " +  '"' + evalue + '"') else ""} \
      ~{if defined(min_len) then ("--minlen " +  '"' + min_len + '"') else ""} \
      ~{if defined(tmpdir) then ("--tmpdir " +  '"' + tmpdir + '"') else ""}
  >>>
  parameter_meta {
    mode: "Choice of search mode for diamond: 'blastx' (default) for DNA query sequences or 'blastp' for amino acid query sequences"
    cpus: "Number of cpus to use for diamond"
    block_size: "Sequence block size in billions of letters (default=2.0). Set to 20 on clusters"
    chunks: "Number of chunks for index processing (default=4)"
    top: "Report alignments within this percentage range of top bitscore (default=10)"
    evalue: "maximum e-value to report alignments (default=0.001)"
    min_len: "Minimum length of queries. Shorter queries will be filtered prior to search."
    tmpdir: "directory for temporary files"
    query: "Query contig nucleotide file"
    dbfile: "Diamond database file"
    outfile: "Diamond output file"
  }
}