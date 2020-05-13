class: CommandLineTool
id: get_genome.cwl
inputs:
- id: dir
  doc: Genome directory
  type: string
  inputBinding:
    prefix: --dir
- id: db
  doc: Genome database.  If argument is '?' (with the quotes), this command lists
    available databases.
  type: string
  inputBinding:
    prefix: --db
- id: coords
  doc: Show coordinates only
  type: boolean
  inputBinding:
    prefix: --coords
- id: uppercase
  doc: Convert sequence to uppercase
  type: boolean
  inputBinding:
    prefix: --uppercase
- id: wrap_length
  doc: Wrap length for sequence (default=60)
  type: long
  inputBinding:
    prefix: --wraplength
- id: full_genome
  doc: Use full (uncompressed) version of genome
  type: boolean
  inputBinding:
    prefix: --fullgenome
- id: header
  doc: Desired header line
  type: string
  inputBinding:
    prefix: --header
- id: snps_dir
  doc: Directory for SNPs index files (created using snpindex)
  type: string
  inputBinding:
    prefix: --snpsdir
- id: use_snps
  doc: Use snp version (built by snpindex)
  type: string
  inputBinding:
    prefix: --usesnps
- id: snp_format
  doc: Print snp information from database built previously using snpindex (0=none,
    1=alternate version only 2=both versions merged (using N), 3=both versions separate
    (default)
  type: long
  inputBinding:
    prefix: --snpformat
- id: map_dir
  doc: Map directory
  type: Directory
  inputBinding:
    prefix: --mapdir
- id: map
  doc: Map file.  If argument is '?' (with the quotes), this lists available map files.
  type: string
  inputBinding:
    prefix: --map
- id: sequence
  doc: For a gene map file, prints the coding sequence
  type: boolean
  inputBinding:
    prefix: --sequence
- id: g_sequence
  doc: For a gene map file, prints the gene sequence (exons plus introns), one per
    line
  type: boolean
  inputBinding:
    prefix: --gsequence
- id: exons
  doc: For a gene map file, prints the sequence, one exon per line
  type: boolean
  inputBinding:
    prefix: --exons
- id: n_unique
  doc: For a gene map file, also prints the number of unique positions
  type: boolean
  inputBinding:
    prefix: --nunique
- id: ranks
  doc: Prints levels for non-overlapping printing of map hits
  type: boolean
  inputBinding:
    prefix: --ranks
- id: raw
  doc: Prints sequence as ASCII numeric codes
  type: boolean
  inputBinding:
    prefix: --raw
- id: flanking
  doc: Show flanking hits (default 0)
  type: long
  inputBinding:
    prefix: --flanking
- id: map_type
  doc: Show only intervals with given type
  type: string
  inputBinding:
    prefix: --maptype
- id: signed
  doc: Show only intervals with same direction as query.  If flanking hits are also
    requested, show only flanking hits downstream in direction of query.
  type: boolean
  inputBinding:
    prefix: --signed
- id: as_label
  doc: Consider all queries to be labels, even if numeric
  type: boolean
  inputBinding:
    prefix: --aslabel
- id: coding
  doc: Print entry only if position overlaps a coding exon
  type: boolean
  inputBinding:
    prefix: --coding
- id: dump
  doc: Dump entire genome in FASTA format
  type: boolean
  inputBinding:
    prefix: --dump
- id: stream
  doc: Dump entire genome as a single stream of ACGTX bytes
  type: boolean
  inputBinding:
    prefix: --stream
- id: chromosomes
  doc: List all chromosomes with universal coordinates
  type: boolean
  inputBinding:
    prefix: --chromosomes
- id: for_sam
  doc: List all chromosomes for use in a SAM file
  type: boolean
  inputBinding:
    prefix: --forsam
- id: contigs
  doc: List all contigs with universal coordinates
  type: boolean
  inputBinding:
    prefix: --contigs
outputs: []
cwlVersion: v1.1
baseCommand:
- get-genome
