class: CommandLineTool
id: samtools_pileup.cwl
inputs:
- id: i
  doc: only show lines/consensus with indels
  type: boolean
  inputBinding:
    prefix: -i
- id: q
  doc: min base quality (possibly capped by BAQ) [13]
  type: long
  inputBinding:
    prefix: -Q
- id: c
  doc: coefficient for adjusting mapQ of poor mappings [0]
  type: long
  inputBinding:
    prefix: -C
- id: m
  doc: filtering reads with bits in INT [0x704]
  type: long
  inputBinding:
    prefix: -m
- id: m
  doc: cap mapping quality at INT [60]
  type: long
  inputBinding:
    prefix: -M
- id: d
  doc: limit maximum depth for indels [1024]
  type: long
  inputBinding:
    prefix: -d
- id: t
  doc: list of reference sequences (force -S)
  type: File
  inputBinding:
    prefix: -t
- id: l
  doc: list of sites at which pileup is output
  type: File
  inputBinding:
    prefix: -l
- id: f
  doc: reference sequence in the FASTA format
  type: File
  inputBinding:
    prefix: -f
- id: c
  doc: compute the consensus sequence
  type: boolean
  inputBinding:
    prefix: -c
- id: v
  doc: print variants only (for -c)
  type: boolean
  inputBinding:
    prefix: -v
- id: g
  doc: output in the GLFv3 format (DEPRECATED)
  type: boolean
  inputBinding:
    prefix: -g
- id: t
  doc: theta in maq consensus calling model (for -c) [0.83]
  type: double
  inputBinding:
    prefix: -T
- id: n
  doc: number of haplotypes in the sample (for -c) [2]
  type: long
  inputBinding:
    prefix: -N
- id: r
  doc: prior of a difference between two haplotypes (for -c) [0.001]
  type: double
  inputBinding:
    prefix: -r
- id: g
  doc: prior of an indel between two haplotypes (for -c) [0.00015]
  type: double
  inputBinding:
    prefix: -G
- id: i
  doc: phred prob. of an indel in sequencing/prep. (for -c) [40]
  type: long
  inputBinding:
    prefix: -I
outputs: []
cwlVersion: v1.1
baseCommand:
- samtools
- pileup
