#!/usr/bin/env cwl-runner

baseCommand:
- weave
class: CommandLineTool
cwlVersion: v1.0
id: weave
inputs:
- doc: filename of assembly in FASTA format (required)
  id: assembly
  inputBinding:
    prefix: --assembly
  type: string
- doc: filename of long reads in FASTQ format (required; must be gzipped)
  id: reads
  inputBinding:
    prefix: --reads
  type: string
- doc: genome coverage to subsample from FASTQ file (default 50)
  id: depth
  inputBinding:
    prefix: --depth
  type: string
- doc: minimum read length to retain when subsampling (default 10000 bp)
  id: length
  inputBinding:
    prefix: --length
  type: long
- doc: telomere sequence to search for
  id: telomere
  inputBinding:
    prefix: --telomere
  type:
    items: string
    type: array
- doc: window size for ploidy calculations (default ~1/30th of contig N50 length,
    minimum 10000 bp)
  id: window_size
  inputBinding:
    prefix: --windowsize
  type: string
- doc: output read alignments whatever the assembly size (default, only output read
    alignments for <50 Mb assemblies)
  id: force_read_output
  inputBinding:
    prefix: --forcereadoutput
  type: boolean
- doc: minimum length of contig alignment to keep (default 2000 bp)
  id: min_contig_alignment
  inputBinding:
    prefix: --mincontigalignment
  type: long
- doc: directory to write output, default weave_output
  id: output
  inputBinding:
    prefix: --output
  type: string
- doc: number of parallel cores to use (default 1)
  id: cores
  inputBinding:
    prefix: --cores
  type: string
