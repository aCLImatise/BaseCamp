#!/usr/bin/env cwl-runner

baseCommand:
- get-genome
class: CommandLineTool
cwlVersion: v1.0
id: get-genome
inputs:
- doc: Genome directory
  id: dir
  inputBinding:
    prefix: --dir
  type: string
- doc: Genome database.  If argument is '?' (with the quotes), this command lists
    available databases.
  id: db
  inputBinding:
    prefix: --db
  type: string
- doc: Show coordinates only
  id: coords
  inputBinding:
    prefix: --coords
  type: boolean
- doc: Convert sequence to uppercase
  id: uppercase
  inputBinding:
    prefix: --uppercase
  type: boolean
- doc: Wrap length for sequence (default=60)
  id: wrap_length
  inputBinding:
    prefix: --wraplength
  type: long
- doc: Use full (uncompressed) version of genome
  id: full_genome
  inputBinding:
    prefix: --fullgenome
  type: boolean
- doc: Desired header line
  id: header
  inputBinding:
    prefix: --header
  type: string
- doc: Directory for SNPs index files (created using snpindex)
  id: snps_dir
  inputBinding:
    prefix: --snpsdir
  type: string
- doc: Use snp version (built by snpindex)
  id: use_snps
  inputBinding:
    prefix: --usesnps
  type: string
- doc: Print snp information from database built previously using snpindex (0=none,
    1=alternate version only 2=both versions merged (using N), 3=both versions separate
    (default)
  id: snp_format
  inputBinding:
    prefix: --snpformat
  type: long
- doc: Map directory
  id: map_dir
  inputBinding:
    prefix: --mapdir
  type: Directory
- doc: Map file.  If argument is '?' (with the quotes), this lists available map files.
  id: map
  inputBinding:
    prefix: --map
  type: string
- doc: For a gene map file, prints the coding sequence
  id: sequence
  inputBinding:
    prefix: --sequence
  type: boolean
- doc: For a gene map file, prints the gene sequence (exons plus introns), one per
    line
  id: g_sequence
  inputBinding:
    prefix: --gsequence
  type: boolean
- doc: For a gene map file, prints the sequence, one exon per line
  id: exons
  inputBinding:
    prefix: --exons
  type: boolean
- doc: For a gene map file, also prints the number of unique positions
  id: n_unique
  inputBinding:
    prefix: --nunique
  type: boolean
- doc: Prints levels for non-overlapping printing of map hits
  id: ranks
  inputBinding:
    prefix: --ranks
  type: boolean
- doc: Prints sequence as ASCII numeric codes
  id: raw
  inputBinding:
    prefix: --raw
  type: boolean
- doc: Show flanking hits (default 0)
  id: flanking
  inputBinding:
    prefix: --flanking
  type: long
- doc: Show only intervals with given type
  id: map_type
  inputBinding:
    prefix: --maptype
  type: string
- doc: Show only intervals with same direction as query.  If flanking hits are also
    requested, show only flanking hits downstream in direction of query.
  id: signed
  inputBinding:
    prefix: --signed
  type: boolean
- doc: Consider all queries to be labels, even if numeric
  id: as_label
  inputBinding:
    prefix: --aslabel
  type: boolean
- doc: Print entry only if position overlaps a coding exon
  id: coding
  inputBinding:
    prefix: --coding
  type: boolean
- doc: Dump entire genome in FASTA format
  id: dump
  inputBinding:
    prefix: --dump
  type: boolean
- doc: Dump entire genome as a single stream of ACGTX bytes
  id: stream
  inputBinding:
    prefix: --stream
  type: boolean
- doc: List all chromosomes with universal coordinates
  id: chromosomes
  inputBinding:
    prefix: --chromosomes
  type: boolean
- doc: List all chromosomes for use in a SAM file
  id: for_sam
  inputBinding:
    prefix: --forsam
  type: boolean
- doc: List all contigs with universal coordinates
  id: contigs
  inputBinding:
    prefix: --contigs
  type: boolean
