class: CommandLineTool
id: brass_bedpe2vcf.pl.cwl
inputs:
- id: in_species
  doc: ': species (HUMAN, MOUSE, DOG etc)'
  type: boolean?
  inputBinding:
    prefix: -species
- id: in_file
  doc: ': input file - format type: bedpe)'
  type: boolean?
  inputBinding:
    prefix: -file
- id: in_outfile
  doc: ': what file to print output to. Default is input_file.bedpe'
  type: boolean?
  inputBinding:
    prefix: -outfile
- id: in_ref
  doc: ': fasta reference file (with associated fai file). For vcf out file generation.'
  type: File?
  inputBinding:
    prefix: -ref
- id: in_assembly
  doc: ': sequence assembly used (eg GRCh37). For vcf out file generation.'
  type: File?
  inputBinding:
    prefix: -assembly
- id: in_platform
  doc: ': sequencing platform used (eg HiSeq). For vcf out file generation.'
  type: File?
  inputBinding:
    prefix: -platform
- id: in_protocol
  doc: ': sequencing experimental design (eg genomic, pulldown). For vcf out file
    generation.'
  type: File?
  inputBinding:
    prefix: -protocol
- id: in_tumour
  doc: ': name of tumour sample. For vcf out file generation.'
  type: File?
  inputBinding:
    prefix: -tumour
- id: in_acc_tumour
  doc: ': name of tumour sample accession id. For vcf out file generation.'
  type: File?
  inputBinding:
    prefix: -acc_tumour
- id: in_acc_source_tumour
  doc: ': source of tumour sample accession id. For vcf out file generation.'
  type: File?
  inputBinding:
    prefix: -acc_source_tumour
- id: in_study_tumour
  doc: ': study id associated with tumour sample. For vcf out file generation.'
  type: File?
  inputBinding:
    prefix: -study_tumour
- id: in_normal
  doc: ': name of normal sample. For vcf out file generation.'
  type: File?
  inputBinding:
    prefix: -normal
- id: in_acc_normal
  doc: ': name of normal sample accession id. For vcf out file generation.'
  type: File?
  inputBinding:
    prefix: -acc_normal
- id: in_acc_source_normal
  doc: ': source of normal sample accession id. For vcf out file generation.'
  type: File?
  inputBinding:
    prefix: -acc_source_normal
- id: in_study_normal
  doc: ': study id associated with normal sample. For vcf out file generation.'
  type: File?
  inputBinding:
    prefix: -study_normal
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_ref
  doc: ': fasta reference file (with associated fai file). For vcf out file generation.'
  type: File?
  outputBinding:
    glob: $(inputs.in_ref)
- id: out_assembly
  doc: ': sequence assembly used (eg GRCh37). For vcf out file generation.'
  type: File?
  outputBinding:
    glob: $(inputs.in_assembly)
- id: out_platform
  doc: ': sequencing platform used (eg HiSeq). For vcf out file generation.'
  type: File?
  outputBinding:
    glob: $(inputs.in_platform)
- id: out_protocol
  doc: ': sequencing experimental design (eg genomic, pulldown). For vcf out file
    generation.'
  type: File?
  outputBinding:
    glob: $(inputs.in_protocol)
- id: out_tumour
  doc: ': name of tumour sample. For vcf out file generation.'
  type: File?
  outputBinding:
    glob: $(inputs.in_tumour)
- id: out_acc_tumour
  doc: ': name of tumour sample accession id. For vcf out file generation.'
  type: File?
  outputBinding:
    glob: $(inputs.in_acc_tumour)
- id: out_acc_source_tumour
  doc: ': source of tumour sample accession id. For vcf out file generation.'
  type: File?
  outputBinding:
    glob: $(inputs.in_acc_source_tumour)
- id: out_study_tumour
  doc: ': study id associated with tumour sample. For vcf out file generation.'
  type: File?
  outputBinding:
    glob: $(inputs.in_study_tumour)
- id: out_normal
  doc: ': name of normal sample. For vcf out file generation.'
  type: File?
  outputBinding:
    glob: $(inputs.in_normal)
- id: out_acc_normal
  doc: ': name of normal sample accession id. For vcf out file generation.'
  type: File?
  outputBinding:
    glob: $(inputs.in_acc_normal)
- id: out_acc_source_normal
  doc: ': source of normal sample accession id. For vcf out file generation.'
  type: File?
  outputBinding:
    glob: $(inputs.in_acc_source_normal)
- id: out_study_normal
  doc: ': study id associated with normal sample. For vcf out file generation.'
  type: File?
  outputBinding:
    glob: $(inputs.in_study_normal)
hints: []
cwlVersion: v1.1
baseCommand:
- brass_bedpe2vcf.pl
