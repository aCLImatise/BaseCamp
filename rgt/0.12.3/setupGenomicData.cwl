class: CommandLineTool
id: setupGenomicData.py.cwl
inputs:
- id: python
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: setup_genomic_data_py
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: all
  doc: Fetch all data sets.
  type: boolean
  inputBinding:
    prefix: --all
- id: hg19
  doc: Fetch human genome files.
  type: boolean
  inputBinding:
    prefix: --hg19
- id: hg38
  doc: Fetch human genome files.
  type: boolean
  inputBinding:
    prefix: --hg38
- id: mm9
  doc: Fetch mouse files.
  type: boolean
  inputBinding:
    prefix: --mm9
- id: mm10
  doc: Fetch mouse files.
  type: boolean
  inputBinding:
    prefix: --mm10
- id: zv9
  doc: Fetch zebrafish files.
  type: boolean
  inputBinding:
    prefix: --zv9
- id: zv10
  doc: Fetch zebrafish files.
  type: boolean
  inputBinding:
    prefix: --zv10
- id: hg19_genome_path
  doc: Path to an already existing hg19 genome (all chromosomes in the same file).
  type: string
  inputBinding:
    prefix: --hg19-genome-path
- id: hg38_genome_path
  doc: Path to an already existing hg38 genome (all chromosomes in the same file).
  type: string
  inputBinding:
    prefix: --hg38-genome-path
- id: mm9_genome_path
  doc: Path to an already existing mm9 genome (all chromosomes in the same file).
  type: string
  inputBinding:
    prefix: --mm9-genome-path
- id: mm10_genome_path
  doc: Path to an already existing mm9 genome (all chromosomes in the same file).
  type: string
  inputBinding:
    prefix: --mm10-genome-path
- id: zv9_genome_path
  doc: Path to an already existing zv9 genome (all chromosomes in the same file).
  type: string
  inputBinding:
    prefix: --zv9-genome-path
- id: zv10_genome_path
  doc: Path to an already existing zv10 genome (all chromosomes in the same file).
  type: string
  inputBinding:
    prefix: --zv10-genome-path
- id: hg19_gtf_path
  doc: Path to an already existing hg19 GTF file.
  type: string
  inputBinding:
    prefix: --hg19-gtf-path
- id: hg38_gtf_path
  doc: Path to an already existing hg38 GTF file.
  type: string
  inputBinding:
    prefix: --hg38-gtf-path
- id: mm9_gtf_path
  doc: Path to an already existing mm9 GTF file.
  type: string
  inputBinding:
    prefix: --mm9-gtf-path
- id: mm10_gtf_path
  doc: Path to an already existing mm10 GTF file.
  type: string
  inputBinding:
    prefix: --mm10-gtf-path
- id: zv9_gtf_path
  doc: Path to an already existing zv9 GTF file.
  type: string
  inputBinding:
    prefix: --zv9-gtf-path
- id: zv10_gtf_path
  doc: Path to an already existing zv10 GTF file.
  type: string
  inputBinding:
    prefix: --zv10-gtf-path
- id: hg38_rm
  doc: Fetch repeat masker files for hg38 from Broad institute.
  type: boolean
  inputBinding:
    prefix: --hg38-rm
- id: hg19_rm
  doc: Fetch repeat masker files for hg19 from Broad institute.
  type: boolean
  inputBinding:
    prefix: --hg19-rm
- id: mm9_rm
  doc: Fetch repeat masker files for mm9 from Broad institute.
  type: boolean
  inputBinding:
    prefix: --mm9-rm
outputs: []
cwlVersion: v1.1
baseCommand:
- setupGenomicData.py
