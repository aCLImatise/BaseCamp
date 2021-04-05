class: CommandLineTool
id: genotyphi.py.cwl
inputs:
- id: in_mode
  doc: "Mode to run in based on input files (vcf, bam, or\nvcf_parsnp)"
  type: string?
  inputBinding:
    prefix: --mode
- id: in_vcf
  doc: "VCF file(s) to genotype (Mapping MUST have been done\nusing CT18 as a reference\
    \ sequence)"
  type: string[]
  inputBinding:
    prefix: --vcf
- id: in_bam
  doc: "BAM file(s) to genotype (Mapping MUST have been done\nusing CT18 as a reference\
    \ sequence)"
  type: string[]
  inputBinding:
    prefix: --bam
- id: in_ref_id
  doc: "Name of the reference in the VCF file (#CHROM column)\nor fasta file. Note\
    \ that CT18 has genotype 3.2.1. If\nall your strains return this genotype, it\
    \ is likely\nyou have specified the name of the refrence sequence\nincorrectly;\
    \ please check your VCFs."
  type: File?
  inputBinding:
    prefix: --ref_id
- id: in_phred
  doc: "Minimum phred quality to count a variant call vs CT18\nas a true SNP (default\
    \ 20)"
  type: long?
  inputBinding:
    prefix: --phred
- id: in_min_prop
  doc: "Minimum proportion of reads required to call a SNP\n(default 0.1)"
  type: long?
  inputBinding:
    prefix: --min_prop
- id: in_ref
  doc: "Reference sequence in fasta format. Required if bam\nfiles provided."
  type: string?
  inputBinding:
    prefix: --ref
- id: in_output
  doc: Location and name for output file.
  type: File?
  inputBinding:
    prefix: --output
- id: in_sam_tools_location
  doc: "Location of folder containing samtools installation if\nnot standard/in path."
  type: File?
  inputBinding:
    prefix: --samtools_location
- id: in_bcf_tools_location
  doc: "Location of folder containing bcftools installation if\nnot standard/in path.\n"
  type: File?
  inputBinding:
    prefix: --bcftools_location
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: Location and name for output file.
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/genotyphi:1.8.0--0
cwlVersion: v1.1
baseCommand:
- genotyphi.py
