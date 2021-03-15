class: CommandLineTool
id: ChorusNoRef.cwl
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
- id: in_bcf_tools
  doc: The path where bcftools software installed
  type: File?
  inputBinding:
    prefix: --bcftools
- id: in_sam_tools
  doc: The path where samtools software installed
  type: File?
  inputBinding:
    prefix: --samtools
- id: in_genome
  doc: "Fasta format genome file, should include all sequences\nfrom genome"
  type: File?
  inputBinding:
    prefix: --genome
- id: in_save
  doc: The output folder for saving results
  type: Directory?
  inputBinding:
    prefix: --save
- id: in_tmp
  doc: The temporary fold for processing
  type: string?
  inputBinding:
    prefix: --tmp
- id: in_probe
  doc: "Original probe design by Chorus2 and filtered by\nChorusNGSfilter"
  type: long?
  inputBinding:
    prefix: --probe
- id: in_reads_one
  doc: "read1 of species, example: For one Species only:\nspecies_R1.fq; for more\
    \ than one species:\nspecies1_R1.fq,species2_R1.fq"
  type: long?
  inputBinding:
    prefix: --reads1
- id: in_reads_two
  doc: "read1 of species, example: For one Species only:\nspecies_R2.fq; for more\
    \ than one species:\nspecies1_R2.fq,species2_R2.fq"
  type: long?
  inputBinding:
    prefix: --reads2
- id: in_names
  doc: species name(s), the order must same as r1, r2
  type: long?
  inputBinding:
    prefix: --names
- id: in_threads
  doc: 'Number of threads or CPUs to use. (Default: 1)'
  type: long?
  inputBinding:
    prefix: --threads
- id: in_mink_mer
  doc: Probe min count for illumina reads
  type: long?
  inputBinding:
    prefix: --minkmer
- id: in_length
  doc: 'The probe length. (Default: 45)'
  type: long?
  inputBinding:
    prefix: --length
- id: in_min_depth
  doc: "Minimum depth covered by illumina sequences. (Default:\n3)"
  type: long?
  inputBinding:
    prefix: --mindepth
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_save
  doc: The output folder for saving results
  type: Directory?
  outputBinding:
    glob: $(inputs.in_save)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/chorus2:2.01--py37hf01694f_0
cwlVersion: v1.1
baseCommand:
- ChorusNoRef
