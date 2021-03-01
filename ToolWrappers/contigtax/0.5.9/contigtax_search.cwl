class: CommandLineTool
id: contigtax_search.cwl
inputs:
- id: in_mode
  doc: "Choice of search mode for diamond: 'blastx' (default)\nfor DNA query sequences\
    \ or 'blastp' for amino acid\nquery sequences"
  type: string?
  inputBinding:
    prefix: --mode
- id: in_cpus
  doc: Number of cpus to use for diamond
  type: long?
  inputBinding:
    prefix: --cpus
- id: in_block_size
  doc: "Sequence block size in billions of letters\n(default=2.0). Set to 20 on clusters"
  type: long?
  inputBinding:
    prefix: --blocksize
- id: in_chunks
  doc: Number of chunks for index processing (default=4)
  type: long?
  inputBinding:
    prefix: --chunks
- id: in_top
  doc: "Report alignments within this percentage range of top\nbitscore (default=10)"
  type: long?
  inputBinding:
    prefix: --top
- id: in_evalue
  doc: maximum e-value to report alignments (default=0.001)
  type: double?
  inputBinding:
    prefix: --evalue
- id: in_min_len
  doc: "Minimum length of queries. Shorter queries will be\nfiltered prior to search."
  type: long?
  inputBinding:
    prefix: --minlen
- id: in_tmpdir
  doc: directory for temporary files
  type: Directory?
  inputBinding:
    prefix: --tmpdir
- id: in_taxon_map
  doc: "Protein accession to taxid mapfile (must be gzipped).\nOnly required for searchingif\
    \ diamond version <0.9.19\n"
  type: double?
  inputBinding:
    prefix: --taxonmap
- id: in_query
  doc: Query contig nucleotide file
  type: string
  inputBinding:
    position: 0
- id: in_dbfile
  doc: Diamond database file
  type: string
  inputBinding:
    position: 1
- id: in_outfile
  doc: Diamond output file
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- contigtax
- search
