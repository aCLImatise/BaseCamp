class: CommandLineTool
id: LinkFragments.py.cwl
inputs:
- id: in_file_unlinked_hapcut
  doc: "[FRAGMENTS], --fragments [FRAGMENTS]\nfile with unlinked hapcut2 fragments\
    \ (generate using\n--10X 1 option in extractHAIRS)"
  type: boolean
  inputBinding:
    prefix: -f
- id: in_vcf_file_phasing
  doc: "[VCF], --VCF [VCF]\nvcf file for phasing"
  type: boolean
  inputBinding:
    prefix: -v
- id: in_bam_file_barcoded
  doc: "[BAM_FILE], --bam_file [BAM_FILE]\nbam file with barcoded reads"
  type: boolean
  inputBinding:
    prefix: -b
- id: in_output_file_linked
  doc: "[OUTFILE], --outfile [OUTFILE]\noutput file with linked fragments"
  type: File
  inputBinding:
    prefix: -o
- id: in_distance_base_pairs
  doc: "[DISTANCE], --distance [DISTANCE]\ndistance in base pairs that delineates\
    \ separate 10X\nmolecules, default=20kb"
  type: boolean
  inputBinding:
    prefix: -d
- id: in_maximum_base_quality
  doc: "[MAXBQ], --maxbq [MAXBQ]\nmaximum base quality for an allele call, default=40"
  type: boolean
  inputBinding:
    prefix: -m
- id: in_single_snp_frags
  doc: "whether to keep fragments overlapping only one SNP\n"
  type: boolean
  inputBinding:
    prefix: --single_SNP_frags
- id: in_fragments
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_vcf
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_bam_file
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file_linked
  doc: "[OUTFILE], --outfile [OUTFILE]\noutput file with linked fragments"
  type: File
  outputBinding:
    glob: $(inputs.in_output_file_linked)
cwlVersion: v1.1
baseCommand:
- LinkFragments.py
