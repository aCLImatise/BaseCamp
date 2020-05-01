#!/usr/bin/env cwl-runner

baseCommand:
- seq-seq-pan
class: CommandLineTool
cwlVersion: v1.0
id: seq-seq-pan
inputs:
- doc: 'blockcountsplit Split XMFA of 2 genomes into 3 XMFA files: blocks with both
    genomes and genome-specific blocks for each genome. extract        Extract sequence
    for whole genome or genomic interval. join           Join LCBs from 2 XMFA files,
    assigning genome_ids as in first XMFA file (-x). maf            Write MAF file
    from XMFA file. map            Map positions/coordinates from consensus to sequences,
    between sequences, ... merge          Add small LCBs to end or beginning of surrounding
    LCBs. Can only be used with two aligned sequences. realign        Realign sequences
    of LCBs around consecutive gaps. Can only be used with two aligned sequences.
    reconstruct    Build alignment of all genomes from .XMFA file with new genome
    aligned to consensus sequence. remove         Remove a genome from all LCBs in
    alignment. resolve        Resolve LCBs stretching over delimiter sequences. separate       Separate
    small multi-sequence LCBs to form genome specific entries. split          Split
    LCBs according to chromosome annotation. xmfa           Write XMFA file from XMFA
    file (for reordering or checking validity).'
  id: subcommand
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: working
  inputBinding:
    prefix: '- Working'
  type: string
