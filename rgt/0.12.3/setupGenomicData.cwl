class: CommandLineTool
id: ../../../setupGenomicData.py.cwl
inputs:
- id: all
  doc: Fetch all data sets.
  type: boolean
  inputBinding:
    prefix: --all
- id: h_gone_nine
  doc: Fetch human genome files.
  type: boolean
  inputBinding:
    prefix: --hg19
- id: hg_three_eight
  doc: Fetch human genome files.
  type: boolean
  inputBinding:
    prefix: --hg38
- id: mm_nine
  doc: Fetch mouse files.
  type: boolean
  inputBinding:
    prefix: --mm9
- id: mm_one_zero
  doc: Fetch mouse files.
  type: boolean
  inputBinding:
    prefix: --mm10
- id: zv_nine
  doc: Fetch zebrafish files.
  type: boolean
  inputBinding:
    prefix: --zv9
- id: zv_one_zero
  doc: Fetch zebrafish files.
  type: boolean
  inputBinding:
    prefix: --zv10
- id: h_gone_nine_genome_path
  doc: Path to an already existing hg19 genome (all chromosomes in the same file).
  type: string
  inputBinding:
    prefix: --hg19-genome-path
- id: hg_three_eight_genome_path
  doc: Path to an already existing hg38 genome (all chromosomes in the same file).
  type: string
  inputBinding:
    prefix: --hg38-genome-path
- id: mm_nine_genome_path
  doc: Path to an already existing mm9 genome (all chromosomes in the same file).
  type: string
  inputBinding:
    prefix: --mm9-genome-path
- id: mm_one_zero_genome_path
  doc: Path to an already existing mm9 genome (all chromosomes in the same file).
  type: string
  inputBinding:
    prefix: --mm10-genome-path
- id: zv_nine_genome_path
  doc: Path to an already existing zv9 genome (all chromosomes in the same file).
  type: string
  inputBinding:
    prefix: --zv9-genome-path
- id: zv_one_zero_genome_path
  doc: Path to an already existing zv10 genome (all chromosomes in the same file).
  type: string
  inputBinding:
    prefix: --zv10-genome-path
- id: h_gone_nine_gtf_path
  doc: Path to an already existing hg19 GTF file.
  type: string
  inputBinding:
    prefix: --hg19-gtf-path
- id: hg_three_eight_gtf_path
  doc: Path to an already existing hg38 GTF file.
  type: string
  inputBinding:
    prefix: --hg38-gtf-path
- id: mm_nine_gtf_path
  doc: Path to an already existing mm9 GTF file.
  type: string
  inputBinding:
    prefix: --mm9-gtf-path
- id: mm_one_zero_gtf_path
  doc: Path to an already existing mm10 GTF file.
  type: string
  inputBinding:
    prefix: --mm10-gtf-path
- id: zv_nine_gtf_path
  doc: Path to an already existing zv9 GTF file.
  type: string
  inputBinding:
    prefix: --zv9-gtf-path
- id: zv_one_zero_gtf_path
  doc: Path to an already existing zv10 GTF file.
  type: string
  inputBinding:
    prefix: --zv10-gtf-path
- id: hg_three_eight_rm
  doc: Fetch repeat masker files for hg38 from Broad institute.
  type: boolean
  inputBinding:
    prefix: --hg38-rm
- id: h_gone_nine_rm
  doc: Fetch repeat masker files for hg19 from Broad institute.
  type: boolean
  inputBinding:
    prefix: --hg19-rm
- id: mm_nine_rm
  doc: Fetch repeat masker files for mm9 from Broad institute.
  type: boolean
  inputBinding:
    prefix: --mm9-rm
outputs: []
cwlVersion: v1.1
baseCommand:
- setupGenomicData.py
