class: CommandLineTool
id: SomaticQC.cwl
inputs:
- id: in_tumor_bam
  doc: Input tumor BAM/CRAM file.
  type: File?
  inputBinding:
    prefix: -tumor_bam
- id: in_normal_bam
  doc: Input normal BAM/CRAM file.
  type: File?
  inputBinding:
    prefix: -normal_bam
- id: in_somatic_vcf
  doc: Input somatic VCF file.
  type: File?
  inputBinding:
    prefix: -somatic_vcf
- id: in_out
  doc: "Output qcML file. If unset, writes to STDOUT.\nDefault value: ''"
  type: File?
  inputBinding:
    prefix: -out
- id: in_links
  doc: "Files that appear in the link part of the qcML file.\nDefault value: ''"
  type: File?
  inputBinding:
    prefix: -links
- id: in_target_bed
  doc: "Target file used for tumor and normal experiment.\nDefault value: ''"
  type: File?
  inputBinding:
    prefix: -target_bed
- id: in_target_exons
  doc: "BED file containing target exons, neccessary for TMB calculation. Please provide\
    \ a file that contains the coordinates of all exons in the reference genome.\n\
    Default value: ''"
  type: File?
  inputBinding:
    prefix: -target_exons
- id: in_blacklist
  doc: "BED file containing regions which are ignored in TMB calculation.\nDefault\
    \ value: ''"
  type: File?
  inputBinding:
    prefix: -blacklist
- id: in_tsg_bed
  doc: "BED file containing regions of tumor suppressor genes for TMB calculation.\n\
    Default value: ''"
  type: File?
  inputBinding:
    prefix: -tsg_bed
- id: in_ref
  doc: "Reference genome FASTA file. If unset 'reference_genome' from the 'settings.ini'\
    \ file is used.\nDefault value: ''"
  type: File?
  inputBinding:
    prefix: -ref
- id: in_skip_plots
  doc: "Skip plots (intended to increase speed of automated tests).\nDefault value:\
    \ 'false'"
  type: boolean?
  inputBinding:
    prefix: -skip_plots
- id: in_build
  doc: "Genome build used to generate the input.\nDefault value: 'hg19'\nValid: 'hg19,hg38'"
  type: long?
  inputBinding:
    prefix: -build
- id: in_ref_cram
  doc: "Reference genome for CRAM support (mandatory if CRAM is used). If set, it\
    \ is used for tumor and normal file.\nDefault value: ''"
  type: File?
  inputBinding:
    prefix: -ref_cram
- id: in_changelog
  doc: Prints changeloge and exits.
  type: boolean?
  inputBinding:
    prefix: --changelog
- id: in_tdx
  doc: Writes a Tool Definition Xml file. The file name is the application name with
    the suffix '.tdx'.
  type: boolean?
  inputBinding:
    prefix: --tdx
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: "Output qcML file. If unset, writes to STDOUT.\nDefault value: ''"
  type: File?
  outputBinding:
    glob: $(inputs.in_out)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/ngs-bits:2021_03--py39h5902420_0
cwlVersion: v1.1
baseCommand:
- SomaticQC
