version 1.0

task ContigtaxSearch {
  input {
    String? mode
    Int? cpus
    Int? block_size
    Int? chunks
    Int? top
    Float? evalue
    Int? min_len
    Directory? tmpdir
    Float? taxon_map
    String query
    String dbfile
    String outfile
  }
  command <<<
    contigtax search \
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
      ~{if defined(tmpdir) then ("--tmpdir " +  '"' + tmpdir + '"') else ""} \
      ~{if defined(taxon_map) then ("--taxonmap " +  '"' + taxon_map + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    mode: "Choice of search mode for diamond: 'blastx' (default)\\nfor DNA query sequences or 'blastp' for amino acid\\nquery sequences"
    cpus: "Number of cpus to use for diamond"
    block_size: "Sequence block size in billions of letters\\n(default=2.0). Set to 20 on clusters"
    chunks: "Number of chunks for index processing (default=4)"
    top: "Report alignments within this percentage range of top\\nbitscore (default=10)"
    evalue: "maximum e-value to report alignments (default=0.001)"
    min_len: "Minimum length of queries. Shorter queries will be\\nfiltered prior to search."
    tmpdir: "directory for temporary files"
    taxon_map: "Protein accession to taxid mapfile (must be gzipped).\\nOnly required for searchingif diamond version <0.9.19\\n"
    query: "Query contig nucleotide file"
    dbfile: "Diamond database file"
    outfile: "Diamond output file"
  }
  output {
    File out_stdout = stdout()
  }
}