#!/usr/bin/env cwl-runner

baseCommand:
- hp_assemble_amplicons
class: CommandLineTool
cwlVersion: v1.0
id: hp_assemble_amplicons
inputs:
- doc: Fasta file with assembled contigs
  id: contigs_fa
  inputBinding:
    prefix: --contigs_fa
  type: string
- doc: Fasta file with reference genome to scaffold against
  id: ref_fa
  inputBinding:
    prefix: --ref_fa
  type: string
- doc: GTF format file containing amplicon regions
  id: ref_gtf
  inputBinding:
    prefix: --ref_gtf
  type: string
- doc: 'Output directory (default: .)'
  id: outdir
  inputBinding:
    prefix: --outdir
  type: string
- doc: 'Sample ID. (default: sampleXX)'
  id: sample_id
  inputBinding:
    prefix: --sample_id
  type: string
- doc: 'Bases to include outside reference annotation. (default: 50)'
  id: padding
  inputBinding:
    prefix: --padding
  type: string
- doc: 'Minimum contig length for tiling path (default: 200)'
  id: min_contig_len
  inputBinding:
    prefix: --min_contig_len
  type: long
- doc: 'Additional options (default: False)'
  id: keep_tmp
  inputBinding:
    prefix: --keep_tmp
  type: boolean
- doc: 'Do not write output to console (silence stdout and stderr) (default: False)'
  id: quiet
  inputBinding:
    prefix: --quiet
  type: boolean
- doc: Append console output to this file
  id: log_file
  inputBinding:
    prefix: --logfile
  type: string
- doc: 'Print commands but do not run (default: False)'
  id: debug
  inputBinding:
    prefix: --debug
  type: boolean
