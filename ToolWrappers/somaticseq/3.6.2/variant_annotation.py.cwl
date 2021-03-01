class: CommandLineTool
id: variant_annotation.py.cwl
inputs:
- id: in_in_file
  doc: 'input vcf file (default: None)'
  type: File?
  inputBinding:
    prefix: --infile
- id: in_outfile
  doc: 'output vcf file (default: None)'
  type: File?
  inputBinding:
    prefix: --outfile
- id: in_dbsnp
  doc: "dbsnp vcf file to feed into GATK4 HaplotypeCaller\n(default: None)"
  type: File?
  inputBinding:
    prefix: --dbsnp
- id: in_cosmic
  doc: "cosmic vcf file to feed into GATK4 HaplotypeCaller\n(default: None)"
  type: File?
  inputBinding:
    prefix: --cosmic
- id: in_snp_sift
  doc: 'SnpSift JAR (default: None)'
  type: string?
  inputBinding:
    prefix: --snpsift
- id: in_snp_eff
  doc: 'snpEff JAR (default: None)'
  type: string?
  inputBinding:
    prefix: --snpeff
- id: in_snp_eff_db
  doc: "snpEff db (default: GRCh38.86)\n"
  type: double?
  inputBinding:
    prefix: --snpeff-db
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outfile
  doc: 'output vcf file (default: None)'
  type: File?
  outputBinding:
    glob: $(inputs.in_outfile)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/somaticseq:3.6.2--py_0
cwlVersion: v1.1
baseCommand:
- variant_annotation.py
