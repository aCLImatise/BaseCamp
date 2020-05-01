#!/usr/bin/env cwl-runner

baseCommand:
- chira_extract.py
class: CommandLineTool
cwlVersion: v1.0
id: chira_extract.py
inputs:
- doc: ', --loci           Input BED file with alignments (default: None)'
  id: l
  inputBinding:
    prefix: -l
  type: boolean
- doc: ', --out            Path to output directory (default: None)'
  id: o
  inputBinding:
    prefix: -o
  type: boolean
- doc: ', --gtf            Annotation GTF file (default: None)'
  id: g
  inputBinding:
    prefix: -g
  type: boolean
- doc: ', --processes      Number of processes to use (default: 1)'
  id: p
  inputBinding:
    prefix: -p
  type: boolean
- doc: ', --tpm_cutoff    Transcripts with less than this percentile TPMs will be
    discarded in the final output. [0-1.0] (default: 0)'
  id: tc
  inputBinding:
    prefix: -tc
  type: boolean
- doc: ', --score_cutoff  Hybrids with less than this score will be discarded in the
    final output. [0-1.0] (default: 0.0)'
  id: sc
  inputBinding:
    prefix: -sc
  type: boolean
- doc: ', --chimeric_overlap  Maximum number of bases allowed between the chimeric
    segments of a read (default: 2)'
  id: co
  inputBinding:
    prefix: -co
  type: boolean
- doc: 'Hybridize the predicted chimeras (default: False)'
  id: hybridize
  inputBinding:
    prefix: --hybridize
  type: boolean
- doc: ', --ref_fasta1    First prioroty fasta file (default: None)'
  id: f1
  inputBinding:
    prefix: -f1
  type: boolean
- doc: ', --ref_fasta2    second priority fasta file (default: None)'
  id: f2
  inputBinding:
    prefix: -f2
  type: boolean
- doc: ', --ref            Reference fasta file (default: None)'
  id: f
  inputBinding:
    prefix: -f
  type: boolean
