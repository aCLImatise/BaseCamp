class: CommandLineTool
id: ../../../contigtax_search.cwl
inputs:
- id: mode
  doc: "Choice of search mode for diamond: 'blastx' (default) for DNA query sequences\
    \ or 'blastp' for amino acid query sequences"
  type: string
  inputBinding:
    prefix: --mode
- id: cpus
  doc: Number of cpus to use for diamond
  type: string
  inputBinding:
    prefix: --cpus
- id: block_size
  doc: Sequence block size in billions of letters (default=2.0). Set to 20 on clusters
  type: string
  inputBinding:
    prefix: --blocksize
- id: chunks
  doc: Number of chunks for index processing (default=4)
  type: string
  inputBinding:
    prefix: --chunks
- id: top
  doc: Report alignments within this percentage range of top bitscore (default=10)
  type: string
  inputBinding:
    prefix: --top
- id: evalue
  doc: maximum e-value to report alignments (default=0.001)
  type: string
  inputBinding:
    prefix: --evalue
- id: min_len
  doc: Minimum length of queries. Shorter queries will be filtered prior to search.
  type: long
  inputBinding:
    prefix: --minlen
- id: tmpdir
  doc: directory for temporary files
  type: string
  inputBinding:
    prefix: --tmpdir
- id: taxon_map
  doc: Protein accession to taxid mapfile (must be gzipped). Only required for searchingif
    diamond version <0.9.19
  type: string
  inputBinding:
    prefix: --taxonmap
- id: query
  doc: Query contig nucleotide file
  type: string
  inputBinding:
    position: 0
- id: dbfile
  doc: Diamond database file
  type: string
  inputBinding:
    position: 1
- id: outfile
  doc: Diamond output file
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- contigtax
- search
