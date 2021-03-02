class: CommandLineTool
id: Circle_Map_Simulate.cwl
inputs:
- id: in_genome_fasta_file
  doc: "Genome fasta file (Needs to be indexed with samtools\nfaidx)"
  type: boolean?
  inputBinding:
    prefix: -g
- id: in_read_number
  doc: Number of reads to simulate
  type: boolean?
  inputBinding:
    prefix: --read-number
- id: in_output
  doc: Output file name
  type: File?
  inputBinding:
    prefix: --output
- id: in_directory
  doc: Working directory, default is the working directory
  type: boolean?
  inputBinding:
    prefix: --directory
- id: in_base_name
  doc: Fastq output basename
  type: boolean?
  inputBinding:
    prefix: --base-name
- id: in_skip_region
  doc: "Regions of the genome to skip the simulation. The\ninput needs to be in bed\
    \ format"
  type: boolean?
  inputBinding:
    prefix: --skip-region
- id: in_read_length
  doc: Read length to simulate
  type: boolean?
  inputBinding:
    prefix: --read-length
- id: in_mean_insert
  doc: Mean of the insert size distribution
  type: boolean?
  inputBinding:
    prefix: --mean-insert
- id: in_mean_coverage
  doc: Mean sequencing coverage within the eccDNA coordinates
  type: boolean?
  inputBinding:
    prefix: --mean-coverage
- id: in_processes
  doc: Number of parallel processes to use
  type: boolean?
  inputBinding:
    prefix: --processes
- id: in_variants
  doc: "If set to true, introduce mutations in the reference\ngenome prior to simulatingreads."
  type: boolean?
  inputBinding:
    prefix: --variants
- id: in_substitution
  doc: "Fraction of base substitutions to introduce on the\ngenome. Default: 0.0001"
  type: boolean?
  inputBinding:
    prefix: --substitution
- id: in_indels
  doc: "Fraction of indels to introduce on the genome.\nDefault: 0.001"
  type: boolean?
  inputBinding:
    prefix: --Indels
- id: in_java_memory
  doc: "Java memory allocation, required for mutating the\ngenome. Default: -Xmx16g"
  type: boolean?
  inputBinding:
    prefix: --java_memory
- id: in_error
  doc: "Introduce sequencing errors ( Uses ART on the\nbackground)"
  type: boolean?
  inputBinding:
    prefix: --error
- id: in_instrument
  doc: "Illumina sequecing instrument to simulate reads from\n(Default HiSeq 2500)"
  type: boolean?
  inputBinding:
    prefix: --instrument
- id: in_ins_rate
  doc: "the first-read insertion rate (default: 0.00009).\nRequires -e"
  type: boolean?
  inputBinding:
    prefix: --insRate
- id: in_ins_rate_two
  doc: "the second-read insertion rate (default: 0.00015).\nRequires -e"
  type: boolean?
  inputBinding:
    prefix: --insRate2
- id: in_del_rate
  doc: "the first-read deletion rate (default: 0.00011).\nRequires -e"
  type: boolean?
  inputBinding:
    prefix: --delRate
- id: in_del_rate_two
  doc: "the second-read deletion rate (default: 0.00023).\nRequires -e\n"
  type: boolean?
  inputBinding:
    prefix: --delRate2
- id: in_circle_map
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_bam_two_bam
  doc: ''
  type: long
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: Output file name
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints: []
cwlVersion: v1.1
baseCommand:
- Circle-Map
- Simulate
