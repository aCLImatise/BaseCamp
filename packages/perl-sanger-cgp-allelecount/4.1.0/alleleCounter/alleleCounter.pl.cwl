class: CommandLineTool
id: alleleCounter.pl.cwl
inputs:
- id: in_bam
  doc: "-b      BAM/CRAM file (expects co-located index)\n- if CRAM see '-ref'"
  type: boolean
  inputBinding:
    prefix: -bam
- id: in_output
  doc: -o      Output file [STDOUT]
  type: File
  inputBinding:
    prefix: -output
- id: in_loci
  doc: "-l      Alternate loci file (just needs chr pos)\n- output is different, counts\
    \ for each residue"
  type: File
  inputBinding:
    prefix: -loci
- id: in_ref
  doc: -r      genome.fa, required for CRAM (with colocated .fai)
  type: boolean
  inputBinding:
    prefix: -ref
- id: in_min_qual
  doc: Minimum base quality to include (integer) [30]
  type: boolean
  inputBinding:
    prefix: -minqual
- id: in_map_qual
  doc: Minimum mapping quality of read (integer) [35]
  type: boolean
  inputBinding:
    prefix: -mapqual
- id: in_gender
  doc: "-g      flag, presence indicates loci file to be treated as gender SNPs.\n\
    - cannot be used with 's'"
  type: boolean
  inputBinding:
    prefix: -gender
- id: in_snp_six
  doc: "-s      flag, presence indicates loci file is SNP6 format.\n- cannot be used\
    \ with 'g'\n- changes output format"
  type: File
  inputBinding:
    prefix: -snp6
- id: in_version
  doc: Version number
  type: boolean
  inputBinding:
    prefix: -version
- id: in_allele_counts_do_tpl
  doc: 'Required:'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: -o      Output file [STDOUT]
  type: File
  outputBinding:
    glob: $(inputs.in_output)
- id: out_loci
  doc: "-l      Alternate loci file (just needs chr pos)\n- output is different, counts\
    \ for each residue"
  type: File
  outputBinding:
    glob: $(inputs.in_loci)
- id: out_snp_six
  doc: "-s      flag, presence indicates loci file is SNP6 format.\n- cannot be used\
    \ with 'g'\n- changes output format"
  type: File
  outputBinding:
    glob: $(inputs.in_snp_six)
cwlVersion: v1.1
baseCommand:
- alleleCounter.pl
