class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/deamSim.cwl
inputs:
- id: read_bam_write
  doc: '[BAM out]                       Read BAM and write output as a BAM (default:
    fasta)'
  type: boolean
  inputBinding:
    prefix: -b
- id: produce_uncompressed_bam
  doc: Produce uncompressed BAM (good for unix pipe)
  type: boolean
  inputBinding:
    prefix: -u
- id: write_fasta_output
  doc: '[fasta out]                     Write fasta output as a zipped fasta'
  type: boolean
  inputBinding:
    prefix: -o
- id: name
  doc: Put a tag in the read name with deam bases (default not on/not used)
  type: boolean
  inputBinding:
    prefix: -name
- id: verbose_mode
  doc: verbose mode
  type: boolean
  inputBinding:
    prefix: -v
- id: last
  doc: 'If matfile is used, do not use the substitution rates of the last row over
    the rest of the molecule (default: no data = use last row)'
  type: boolean
  inputBinding:
    prefix: -last
- id: map_damage
  doc: "[mis.txt] [protocol]        Read the miscorporation file [mis.txt] produced\
    \ by mapDamage [protocol] can be either \"single\" or \"double\" (without quotes)\
    \ Single strand will have C->T damage on both ends Double strand will have and\
    \ C->T at the 5' end and G->A damage at the 3' end"
  type: boolean
  inputBinding:
    prefix: -mapdamage
- id: mat_file
  doc: '[matrix file prefix]          Read the matrix file of substitutions instead
    of the default Provide the prefix only, both files must end with 5.dat and 3.dat'
  type: boolean
  inputBinding:
    prefix: -matfile
- id: mat_file_non_meth
  doc: '[matrix file prefix]   Read the matrix file of substitutions for non-methylated
    Cs Provide the prefix only, both files must end with 5.dat and 3.dat'
  type: boolean
  inputBinding:
    prefix: -matfilenonmeth
- id: mat_file_meth
  doc: '[matrix file prefix]      Read the matrix file of substitutions for methylated
    Cs Provide the prefix only, both files must end with 5.dat and 3.dat'
  type: boolean
  inputBinding:
    prefix: -matfilemeth
- id: mat
  doc: '[ancient DNA matrix]          For default matrices, use either "single" or
    "double" (without quotes) Single strand will have C->T damage on both ends Double
    strand will have and C->T at the 5p end and G->A damage at the 3p end'
  type: boolean
  inputBinding:
    prefix: -mat
- id: damage
  doc: '[v,l,d,s]                   For the Briggs et al. 2007 model The parameters
    must be comma-separated e.g.: -damage 0.03,0.4,0.01,0.7 v: nick frequency l: length
    of overhanging ends (geometric parameter) d: prob. of deamination of Cs in double-stranded
    parts s: prob. of deamination of Cs in single-stranded parts'
  type: boolean
  inputBinding:
    prefix: -damage
- id: fast_a
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: or
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: bam
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: file
  doc: ''
  type: File
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- deamSim
