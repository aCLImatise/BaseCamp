#!/usr/bin/env cwl-runner

baseCommand:
- CopraRNA2.pl
class: CommandLineTool
cwlVersion: v1.0
id: coprarna2.pl
inputs:
- doc: FASTA file with small RNA sequences (def:input_sRNA.fa)
  id: srna_seq
  inputBinding:
    prefix: --srnaseq
  type: boolean
- doc: region to scan in whole genome target prediction (def:5utr) '5utr' for start
    codon '3utr' for stop codon 'cds' for entire transcript
  id: region
  inputBinding:
    prefix: --region
  type: boolean
- doc: amount of nucleotides upstream of '--region' to parse for targeting (def:200)
  id: nt_up
  inputBinding:
    prefix: --ntup
  type: boolean
- doc: amount of nucleotides downstream of '--region' to parse for targeting (def:100)
  id: nt_down
  inputBinding:
    prefix: --ntdown
  type: boolean
- doc: amount of cores to use for parallel computation (def:1)
  id: cores
  inputBinding:
    prefix: --cores
  type: boolean
- doc: minimum amount (%) of putative target homologs that need to be available  for
    a target cluster to be considered in the CopraRNA1 part (see --cop1) of the prediction
    (def:0.5)
  id: rc_size
  inputBinding:
    prefix: --rcsize
  type: boolean
- doc: IntaRNA target (--tAccW) window size parameter (def:150)
  id: winsize
  inputBinding:
    prefix: --winsize
  type: boolean
- doc: IntaRNA target (--tAccL) maximum base pair distance parameter (def:100)
  id: max_bp_dist
  inputBinding:
    prefix: --maxbpdist
  type: boolean
- doc: switch for CopraRNA1 prediction (def:off)
  id: cop1
  inputBinding:
    prefix: --cop1
  type: boolean
- doc: controls consensus prediction (def:0) '0' for off '1' for organism of interest
    based consensus '2' for overall consensus based prediction
  id: cons
  inputBinding:
    prefix: --cons
  type: boolean
- doc: switch to print verbose output to terminal during computation (def:off)
  id: verbose
  inputBinding:
    prefix: --verbose
  type: boolean
- doc: switch to provide webserver output files (def:off)
  id: web_srv
  inputBinding:
    prefix: --websrv
  type: boolean
- doc: switch to prevent removal of temporary files (def:off)
  id: no_clean
  inputBinding:
    prefix: --noclean
  type: boolean
- doc: if entered then DAVID-WS functional enrichment is calculated with given amount
    of top predictions (def:off)
  id: enrich
  inputBinding:
    prefix: --enrich
  type: boolean
- doc: if set then the CopraRNA2 prediction mode is set not to focus on the organism
    of interest (def:off)
  id: no_oi
  inputBinding:
    prefix: --nooi
  type: boolean
- doc: post processing filter for organism of interest p-value 0=off (def:0)
  id: ooi_filt
  inputBinding:
    prefix: --ooifilt
  type: boolean
- doc: specifies root function to apply to the weights (def:1)
  id: root
  inputBinding:
    prefix: --root
  type: boolean
- doc: specifies the amount of top predictions to return and use for the extended
    regions plots (def:200)
  id: top_count
  inputBinding:
    prefix: --topcount
  type: boolean
