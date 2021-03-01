class: CommandLineTool
id: Chorus2.cwl
inputs:
- id: in_jellyfish
  doc: The path where Jellyfish software installed
  type: File?
  inputBinding:
    prefix: --jellyfish
- id: in_bwa
  doc: The path where BWA software installed
  type: File?
  inputBinding:
    prefix: --bwa
- id: in_genome
  doc: "Fasta format genome file, should include all sequences\nfrom genome"
  type: File?
  inputBinding:
    prefix: --genome
- id: in_input
  doc: "Fasta format input file, can be whole genome, a\nchromosome or one region\
    \ from genome"
  type: File?
  inputBinding:
    prefix: --input
- id: in_save
  doc: The output folder for saving results
  type: Directory?
  inputBinding:
    prefix: --save
- id: in_primer
  doc: "A specific 5' labeled R primer for PCR reaction. For\nexample: CGTGGTCGCGTCTCA.\
    \ (Default is none)"
  type: long?
  inputBinding:
    prefix: --primer
- id: in_threads
  doc: 'Number of threads or CPUs to use. (Default: 1)'
  type: long?
  inputBinding:
    prefix: --threads
- id: in_length
  doc: 'The probe length. (Default: 45)'
  type: long?
  inputBinding:
    prefix: --length
- id: in_homology
  doc: "The maximum homology(%) between target sequence and\nprobe, range from 50\
    \ to 100. (Default: 75)"
  type: long?
  inputBinding:
    prefix: --homology
- id: in_dtm
  doc: "The minimum value of dTm (hybrid Tm - hairpin Tm),\nrange from 0 to 37. (Default:\
    \ 10)"
  type: long?
  inputBinding:
    prefix: --dtm
- id: in_step
  doc: "The step length for k-mer searching in a sliding\nwindow, step length>=1.\
    \ (Default: 5)"
  type: long?
  inputBinding:
    prefix: --step
- id: in_docker
  doc: Only used in Docker version of Chorus
  type: string?
  inputBinding:
    prefix: --docker
- id: in_ploidy
  doc: "The ploidy of the given genome (test version).\n(Default: 2)"
  type: long?
  inputBinding:
    prefix: --ploidy
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_save
  doc: The output folder for saving results
  type: Directory?
  outputBinding:
    glob: $(inputs.in_save)
hints: []
cwlVersion: v1.1
baseCommand:
- Chorus2
