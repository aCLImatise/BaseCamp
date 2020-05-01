#!/usr/bin/env cwl-runner

baseCommand:
- chira_map.py
class: CommandLineTool
cwlVersion: v1.0
id: chira_map.py
inputs:
- doc: ', --aligner        Alignment program to use, bwa or clan (default: bwa)'
  id: a
  inputBinding:
    prefix: -a
  type: boolean
- doc: ', --query_fasta    Path to query fasta file (default: None)'
  id: i
  inputBinding:
    prefix: -i
  type: boolean
- doc: ', --outdir         Output directory path for the analysis (default: None)'
  id: o
  inputBinding:
    prefix: -o
  type: boolean
- doc: ', --index1        first prioroty index file (default: None)'
  id: x1
  inputBinding:
    prefix: -x1
  type: boolean
- doc: ', --index2        second priority index file (default: None)'
  id: x2
  inputBinding:
    prefix: -x2
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
- doc: 'Build indices from reference fasta files (default: False)'
  id: build
  inputBinding:
    prefix: --build
  type: boolean
- doc: ', --processes      Number of processes to use (default: 1)'
  id: p
  inputBinding:
    prefix: -p
  type: boolean
- doc: ', --stranded       Strand-specificity of input samples. fw = map to transcript
    strand; rc = map to reverse compliment of transcript strand; both = try to map
    on both strnads (default: fw)'
  id: s
  inputBinding:
    prefix: -s
  type: boolean
- doc: ', --seed_length1  Seed length for 1st mapping iteration. bwa-mem parameter
    "-k" (default: 12)'
  id: l1
  inputBinding:
    prefix: -l1
  type: boolean
- doc: ', --seed_length2  Seed length for 2nd mapping iteration. bwa-mem parameter
    "-k" (default: 6)'
  id: l2
  inputBinding:
    prefix: -l2
  type: boolean
- doc: ', --align_score1  Minimum alignment score in 1st mapping iteration. bwa- mem
    parameter "-T" and clan_search parameter "-l" (default: 18)'
  id: s1
  inputBinding:
    prefix: -s1
  type: boolean
- doc: ', --align_score2  Minimum alignment score in 2nd mapping iteration. It must
    be smaller than --align_score1 parameter. bwa-mem parameter "-T" and clan_search
    parameter "-l" (default: 10)'
  id: s2
  inputBinding:
    prefix: -s2
  type: boolean
- doc: ', --chimeric_overlap  Maximum number of bases allowed between the chimeric
    segments of a read (default: 2)'
  id: co
  inputBinding:
    prefix: -co
  type: boolean
