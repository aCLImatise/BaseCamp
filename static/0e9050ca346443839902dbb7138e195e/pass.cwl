class: CommandLineTool
id: pass.cwl
inputs:
- id: check_block
  doc: '5000 -fastq reads.fastq \ '
  type: boolean
  inputBinding:
    prefix: -check_block
- id: cpu
  doc: '12 -flc 1  -seed_step 3 -g 2 \ '
  type: boolean
  inputBinding:
    prefix: -cpu
- id: fid
  doc: '90 -b -fle 50 -sam [-phred64] > results.sam \ '
  type: boolean
  inputBinding:
    prefix: -fid
- id: check_block
  doc: '5000 -bisulfite -fastq reads.fastq \ '
  type: boolean
  inputBinding:
    prefix: -check_block
- id: cpu
  doc: '12 -flc 4  -seed_step 8 -g 2 \ '
  type: boolean
  inputBinding:
    prefix: -cpu
- id: fid
  doc: '90 -b -fle 50 -sam [-phred64] > results.sam \ '
  type: boolean
  inputBinding:
    prefix: -fid
- id: range
  doc: '0 600 600 -unique_pair 1 -unique_single 1 -stdout -pe_type 0 \ '
  type: boolean
  inputBinding:
    prefix: -range
- id: tags
  doc: '/1 /2 > paired_alignments.sam '
  type: boolean
  inputBinding:
    prefix: -tags
- id: check_block
  doc: '5000 -csfastq reads.csfastq \ '
  type: boolean
  inputBinding:
    prefix: -check_block
- id: cpu
  doc: '12 -flc 1  -seed_step 3 \ '
  type: boolean
  inputBinding:
    prefix: -cpu
- id: fid
  doc: '90 -b -fle 40 -sam > results.sam \ '
  type: boolean
  inputBinding:
    prefix: -fid
- id: check_block
  doc: '5000 -bisulfite -csfastq reads.csfastq \ '
  type: boolean
  inputBinding:
    prefix: -check_block
- id: cpu
  doc: '12 -flc 4  -seed_step 6  \ '
  type: boolean
  inputBinding:
    prefix: -cpu
- id: fid
  doc: '90 -b -fle 40 -sam > results.sam \ '
  type: boolean
  inputBinding:
    prefix: -fid
- id: range
  doc: '0 3000 100000 -unique_pair 1 -unique_single 1 -stdout \ '
  type: boolean
  inputBinding:
    prefix: -range
- id: lib_type
  doc: '1 -pe_type 1 -tags R3 F3  > paired_alignments.sam '
  type: boolean
  inputBinding:
    prefix: -lib_type
- id: range
  doc: '0 600 600 -unique_pair 1 -unique_single 1 -stdout -pe_type 0 \ '
  type: boolean
  inputBinding:
    prefix: -range
- id: tags
  doc: '_F3 _F5-BC  > paired_alignments.sam '
  type: boolean
  inputBinding:
    prefix: -tags
- id: d
  doc: '0.01 -q 10 [-phred64] > result.txt '
  type: string
  inputBinding:
    prefix: -d
outputs: []
cwlVersion: v1.1
baseCommand:
- pass
