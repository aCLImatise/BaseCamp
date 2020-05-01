#!/usr/bin/env cwl-runner

baseCommand:
- proTRAC_2.4.2.pl
class: CommandLineTool
cwlVersion: v1.0
id: protrac_2.4.2.pl
inputs:
- doc: "[ftp-ftp]        To avoid false positive piRNA cluster annotation of loci\
    \ with one or few mapped sequences represented by exceptionally many reads. You\
    \ can e.g. type '-distr 10-75' which means that the TOP 10% of mapped sequences\
    \ account for max. 75% of the piRNA clusters (normalized) read counts. Otherwise\
    \ the locus is rejected."
  id: distr
  inputBinding:
    prefix: -distr
  type: boolean
- doc: '[int]           Set the minimum size for a piRNA cluster (default= 1000).'
  id: cl_size
  inputBinding:
    prefix: -clsize
  type: boolean
- doc: '[int]           Minimum number of sequence hit loci per piRNA cluster (default=0).'
  id: cl_hits
  inputBinding:
    prefix: -clhits
  type: boolean
- doc: '[ftp]          Minimum number of normalized sequence read counts per piRNA
    cluster (default=0).'
  id: cl_hits_n
  inputBinding:
    prefix: -clhitsn
  type: boolean
- doc: '[0..1]        Fraction of (normalized) read counts that map to the main strand
    (default=0.75).'
  id: cl_strand
  inputBinding:
    prefix: -clstrand
  type: boolean
- doc: '[0..1]         Minimum fraction of (normalized) read counts on the smaller
    arm of a bi-directional piRNA cluster. Otherwise the cluster will be annotated
    as mono-directional (default=0.1).'
  id: cl_split
  inputBinding:
    prefix: -clsplit
  type: boolean
- doc: Do not output .html files for each piRNA cluster.
  id: no_html
  inputBinding:
    prefix: -nohtml
  type: boolean
- doc: Do not output a summary table.
  id: notable
  inputBinding:
    prefix: -notable
  type: boolean
- doc: Do not output a FASTA file comprising mapped piRNAs for each cluster.
  id: nofa_spi
  inputBinding:
    prefix: -nofaspi
  type: boolean
- doc: Do not output a FASTA file comprising all piRNA cluster sequences.
  id: nofa_scl
  inputBinding:
    prefix: -nofascl
  type: boolean
- doc: Do not output a GTF file for predicted piRNA clusters.
  id: no_gtf
  inputBinding:
    prefix: -nogtf
  type: boolean
- doc: Do not search for transcription factor binding sites.
  id: no_motif
  inputBinding:
    prefix: -nomotif
  type: boolean
- doc: '[int]            Include n bp of flanking sequence in output files.'
  id: flank
  inputBinding:
    prefix: -flank
  type: boolean
- doc: 'Output a file that contains information on mapped sequence reads in a tab-delimited
    table that comprises sequence, reads, genomic hits e.g: TGGGCACGCAAATTCGAGTATCG   12   4'
  id: pti
  inputBinding:
    prefix: -pti
  type: boolean
