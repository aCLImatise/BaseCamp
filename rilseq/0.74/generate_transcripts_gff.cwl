#!/usr/bin/env cwl-runner

baseCommand:
- generate_transcripts_gff.py
class: CommandLineTool
cwlVersion: v1.0
id: generate_transcripts_gff.py
inputs:
- doc: BioCyc flat-files directory.
  id: bc_dir
  inputBinding:
    position: 0
  type: string
- doc: A comma separated dictionary of chromosome names from the BioCyc name to the
    bam name. See the names of chromosomes in bam file using samtools view -H foo.bam.
  id: bc_chr_list
  inputBinding:
    prefix: --BC_chrlist
  type: string
- doc: Estimated UTRs lengths when there is not data.
  id: est_utr_lens
  inputBinding:
    prefix: --est_utr_lens
  type: string
