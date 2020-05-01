#!/usr/bin/env cwl-runner

baseCommand:
- pass
class: CommandLineTool
cwlVersion: v1.0
id: pass
inputs:
- doc: '5000 -fastq reads.fastq \ '
  id: check_block
  inputBinding:
    prefix: -check_block
  type: boolean
- doc: '12 -flc 1  -seed_step 3 -g 2 \ '
  id: cpu
  inputBinding:
    prefix: -cpu
  type: boolean
- doc: '90 -b -fle 50 -sam [-phred64] > results.sam \ '
  id: fid
  inputBinding:
    prefix: -fid
  type: boolean
- doc: '5000 -bisulfite -fastq reads.fastq \ '
  id: check_block
  inputBinding:
    prefix: -check_block
  type: boolean
- doc: '12 -flc 4  -seed_step 8 -g 2 \ '
  id: cpu
  inputBinding:
    prefix: -cpu
  type: boolean
- doc: '90 -b -fle 50 -sam [-phred64] > results.sam \ '
  id: fid
  inputBinding:
    prefix: -fid
  type: boolean
- doc: '0 600 600 -unique_pair 1 -unique_single 1 -stdout -pe_type 0 \ '
  id: range
  inputBinding:
    prefix: -range
  type: boolean
- doc: '/1 /2 > paired_alignments.sam '
  id: tags
  inputBinding:
    prefix: -tags
  type: boolean
- doc: '5000 -csfastq reads.csfastq \ '
  id: check_block
  inputBinding:
    prefix: -check_block
  type: boolean
- doc: '12 -flc 1  -seed_step 3 \ '
  id: cpu
  inputBinding:
    prefix: -cpu
  type: boolean
- doc: '90 -b -fle 40 -sam > results.sam \ '
  id: fid
  inputBinding:
    prefix: -fid
  type: boolean
- doc: '5000 -bisulfite -csfastq reads.csfastq \ '
  id: check_block
  inputBinding:
    prefix: -check_block
  type: boolean
- doc: '12 -flc 4  -seed_step 6  \ '
  id: cpu
  inputBinding:
    prefix: -cpu
  type: boolean
- doc: '90 -b -fle 40 -sam > results.sam \ '
  id: fid
  inputBinding:
    prefix: -fid
  type: boolean
- doc: '0 3000 100000 -unique_pair 1 -unique_single 1 -stdout \ '
  id: range
  inputBinding:
    prefix: -range
  type: boolean
- doc: '1 -pe_type 1 -tags R3 F3  > paired_alignments.sam '
  id: lib_type
  inputBinding:
    prefix: -lib_type
  type: boolean
- doc: '0 600 600 -unique_pair 1 -unique_single 1 -stdout -pe_type 0 \ '
  id: range
  inputBinding:
    prefix: -range
  type: boolean
- doc: '_F3 _F5-BC  > paired_alignments.sam '
  id: tags
  inputBinding:
    prefix: -tags
  type: boolean
- doc: '0.01 -q 10 [-phred64] > result.txt '
  id: d
  inputBinding:
    prefix: -d
  type: string
