class: CommandLineTool
id: NanoSV.cwl
inputs:
- id: in_threads
  doc: 'Number of threads [default: 4]'
  type: long
  inputBinding:
    prefix: --threads
- id: in_samba_mba
  doc: "Give the full path to the sambamba or samtools\nexecutable [default: sambamba\
    \ ]"
  type: File
  inputBinding:
    prefix: --sambamba
- id: in_config
  doc: "Give the full path to your own ini file [ default:\nconfig.ini ]"
  type: File
  inputBinding:
    prefix: --config
- id: in_bed
  doc: "Give the full path to your own bed file, used for\ncoverage depth calculations\
    \ [default: human_hg19.bed ]"
  type: File
  inputBinding:
    prefix: --bed
- id: in_output
  doc: "Give the full path to the output vcf file [default:\n<stdout> ]"
  type: File
  inputBinding:
    prefix: --output
- id: in_snp_file
  doc: "Give full path to the SNP variant file for phasing.\nSupporting file formats:\
    \ BED and VCF"
  type: File
  inputBinding:
    prefix: --snp_file
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: "Give the full path to the output vcf file [default:\n<stdout> ]"
  type: File
  outputBinding:
    glob: $(inputs.in_output)
cwlVersion: v1.1
baseCommand:
- NanoSV
