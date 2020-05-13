class: CommandLineTool
id: pash2SAM.cwl
inputs:
- id: pash_mappings
  doc: '| -p    pash mappings file'
  type: boolean
  inputBinding:
    prefix: --pashMappings
- id: fast_q_file
  doc: '| -f    FASTQ file for the mapped reads. When using .fa and .qual file, use
    our utility faqualToFastq.rb'
  type: boolean
  inputBinding:
    prefix: --fastqFile
- id: references_equ_nces
  doc: '| -r    file containing the reference sequences and their lengths'
  type: boolean
  inputBinding:
    prefix: --referenceSequnces
- id: bisulfite_seq_flag
  doc: '| -B    converting the mappings of a bisulfite sequencing run'
  type: boolean
  inputBinding:
    prefix: --bisulfiteSeqFlag
- id: sam_file
  doc: '| -S    output SAM file'
  type: boolean
  inputBinding:
    prefix: --SAMFile
- id: sample
  doc: '| -s    sample name'
  type: boolean
  inputBinding:
    prefix: --sample
- id: center
  doc: '| -C    center name'
  type: boolean
  inputBinding:
    prefix: --center
outputs: []
cwlVersion: v1.1
baseCommand:
- pash2SAM
