class: CommandLineTool
id: get_genome.cwl
inputs:
- id: in_dir
  doc: Genome directory
  type: Directory?
  inputBinding:
    prefix: --dir
- id: in_db
  doc: "Genome database.  If argument is '?' (with\nthe quotes), this command lists\
    \ available databases."
  type: string?
  inputBinding:
    prefix: --db
- id: in_genes
  doc: Argument is a genes file
  type: boolean?
  inputBinding:
    prefix: --genes
- id: in_di_base
  doc: Use dibase version of genome
  type: boolean?
  inputBinding:
    prefix: --dibase
- id: in_coords
  doc: Show coordinates only
  type: boolean?
  inputBinding:
    prefix: --coords
- id: in_uppercase
  doc: Convert sequence to uppercase
  type: boolean?
  inputBinding:
    prefix: --uppercase
- id: in_wrap_length
  doc: Wrap length for sequence (default=60)
  type: long?
  inputBinding:
    prefix: --wraplength
- id: in_header
  doc: Desired header line
  type: string?
  inputBinding:
    prefix: --header
- id: in_snps_dir
  doc: Directory for SNPs index files (created using snpindex)
  type: Directory?
  inputBinding:
    prefix: --snpsdir
- id: in_use_snps
  doc: Use snp version (built by snpindex)
  type: string?
  inputBinding:
    prefix: --usesnps
- id: in_snp_format
  doc: "Print snp information from database built previously\nusing snpindex (0=none,\
    \ 1=alternate version only\n2=both versions merged (using N), 3=both versions\
    \ separate (default)"
  type: long?
  inputBinding:
    prefix: --snpformat
- id: in_map_dir
  doc: Map directory
  type: Directory?
  inputBinding:
    prefix: --mapdir
- id: in_map
  doc: "Map file.  If argument is '?' (with the quotes),\nthis lists available map\
    \ files."
  type: File?
  inputBinding:
    prefix: --map
- id: in_sequence
  doc: For a gene map file, prints the coding sequence
  type: boolean?
  inputBinding:
    prefix: --sequence
- id: in_g_sequence
  doc: For a gene map file, prints the gene sequence (exons plus introns), one per
    line
  type: boolean?
  inputBinding:
    prefix: --gsequence
- id: in_exons
  doc: For a gene map file, prints the sequence, one exon per line
  type: boolean?
  inputBinding:
    prefix: --exons
- id: in_n_unique
  doc: For a gene map file, also prints the number of unique positions
  type: boolean?
  inputBinding:
    prefix: --nunique
- id: in_ranks
  doc: Prints levels for non-overlapping printing of map hits
  type: boolean?
  inputBinding:
    prefix: --ranks
- id: in_raw
  doc: Prints sequence as ASCII numeric codes
  type: boolean?
  inputBinding:
    prefix: --raw
- id: in_flanking
  doc: Show flanking hits (default 0)
  type: long?
  inputBinding:
    prefix: --flanking
- id: in_map_type
  doc: Show only intervals with given type
  type: string?
  inputBinding:
    prefix: --maptype
- id: in_signed
  doc: "Show only intervals with same direction as query.  If flanking hits\nare also\
    \ requested, show only flanking hits downstream in direction of\nquery."
  type: boolean?
  inputBinding:
    prefix: --signed
- id: in_as_label
  doc: Consider all queries to be labels, even if numeric
  type: boolean?
  inputBinding:
    prefix: --aslabel
- id: in_coding
  doc: Print entry only if position overlaps a coding exon
  type: boolean?
  inputBinding:
    prefix: --coding
- id: in_dump
  doc: Dump entire genome in FASTA format
  type: boolean?
  inputBinding:
    prefix: --dump
- id: in_stream
  doc: Dump entire genome as a single stream of ACGTX bytes
  type: boolean?
  inputBinding:
    prefix: --stream
- id: in_chromosomes
  doc: List all chromosomes with universal coordinates
  type: boolean?
  inputBinding:
    prefix: --chromosomes
- id: in_for_sam
  doc: List all chromosomes for use in a SAM file
  type: boolean?
  inputBinding:
    prefix: --forsam
- id: in_contigs
  doc: List all contigs with universal coordinates
  type: boolean?
  inputBinding:
    prefix: --contigs
- id: in_options_dot_dot_dot
  doc: ''
  type: string?
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- get-genome
