#!/usr/bin/env cwl-runner

baseCommand:
- ptmSummary.py
class: CommandLineTool
cwlVersion: v1.0
id: ptmsummary.py
inputs:
- doc: Threads to run
  id: p
  inputBinding:
    prefix: -p
  type: string
- doc: Do not log2 normalize quantification values.
  id: no_log2
  inputBinding:
    prefix: --no-log2
  type: boolean
- doc: Do not normalize quantification values by the median of the experiment.
  id: no_median
  inputBinding:
    prefix: --no-median
  type: boolean
- doc: The whole proteome inference file, if it exists. For multiple replicates, separate
    by spaces.
  id: wp
  inputBinding:
    prefix: --wp
  type:
    items: string
    type: array
- doc: Normalize the data by the non-modified peptides.
  id: non_mod_norm
  inputBinding:
    prefix: --non-mod-norm
  type: boolean
- doc: The output path for the file with sumamries at the site level.
  id: site_file
  inputBinding:
    prefix: --site-file
  type: string
- doc: The output path for the file with sumamries at the site and peptide level.
  id: peptide_file
  inputBinding:
    prefix: --peptide-file
  type: string
- doc: The protein inference file (your peptide file with gene/protein annotations).
    For multiple files, separate by spaces (must be in same order as mods).
  id: inference
  inputBinding:
    prefix: --inference
  type:
    items: string
    type: array
- doc: The Gene column name
  id: gene
  inputBinding:
    prefix: --gene
  type: string
- doc: The Protein column name
  id: protein
  inputBinding:
    prefix: --protein
  type: string
- doc: The Peptide column name
  id: peptide
  inputBinding:
    prefix: --peptide
  type: string
- doc: The name of quantification columns (such as Heavy/Light). Separate multiple
    columns by spaces
  id: quant
  inputBinding:
    prefix: --quant
  type:
    items: string
    type: array
- doc: The modifications file (the file with sites, peptides). For multiple files,
    separate by spaces (must be in same order as inference).
  id: mods
  inputBinding:
    prefix: --mods
  type:
    items: string
    type: array
- doc: The mod file protein column name
  id: site_protein
  inputBinding:
    prefix: --site-protein
  type: string
