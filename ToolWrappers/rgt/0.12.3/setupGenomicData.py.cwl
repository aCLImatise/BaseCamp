class: CommandLineTool
id: setupGenomicData.py.cwl
inputs:
- id: in_all
  doc: Fetch all data sets.
  type: boolean
  inputBinding:
    prefix: --all
- id: in_h_gone_nine
  doc: Fetch human genome files.
  type: boolean
  inputBinding:
    prefix: --hg19
- id: in_hg_three_eight
  doc: Fetch human genome files.
  type: boolean
  inputBinding:
    prefix: --hg38
- id: in_mm_nine
  doc: Fetch mouse files.
  type: boolean
  inputBinding:
    prefix: --mm9
- id: in_mm_one_zero
  doc: Fetch mouse files.
  type: boolean
  inputBinding:
    prefix: --mm10
- id: in_zv_nine
  doc: Fetch zebrafish files.
  type: boolean
  inputBinding:
    prefix: --zv9
- id: in_zv_one_zero
  doc: Fetch zebrafish files.
  type: boolean
  inputBinding:
    prefix: --zv10
- id: in_h_gone_nine_genome_path
  doc: "Path to an already existing hg19 genome (all\nchromosomes in the same file)."
  type: File
  inputBinding:
    prefix: --hg19-genome-path
- id: in_hg_three_eight_genome_path
  doc: "Path to an already existing hg38 genome (all\nchromosomes in the same file)."
  type: File
  inputBinding:
    prefix: --hg38-genome-path
- id: in_mm_nine_genome_path
  doc: "Path to an already existing mm9 genome (all\nchromosomes in the same file)."
  type: File
  inputBinding:
    prefix: --mm9-genome-path
- id: in_mm_one_zero_genome_path
  doc: "Path to an already existing mm9 genome (all\nchromosomes in the same file)."
  type: File
  inputBinding:
    prefix: --mm10-genome-path
- id: in_zv_nine_genome_path
  doc: "Path to an already existing zv9 genome (all\nchromosomes in the same file)."
  type: File
  inputBinding:
    prefix: --zv9-genome-path
- id: in_zv_one_zero_genome_path
  doc: "Path to an already existing zv10 genome (all\nchromosomes in the same file)."
  type: File
  inputBinding:
    prefix: --zv10-genome-path
- id: in_h_gone_nine_gtf_path
  doc: Path to an already existing hg19 GTF file.
  type: File
  inputBinding:
    prefix: --hg19-gtf-path
- id: in_hg_three_eight_gtf_path
  doc: Path to an already existing hg38 GTF file.
  type: File
  inputBinding:
    prefix: --hg38-gtf-path
- id: in_mm_nine_gtf_path
  doc: Path to an already existing mm9 GTF file.
  type: File
  inputBinding:
    prefix: --mm9-gtf-path
- id: in_mm_one_zero_gtf_path
  doc: Path to an already existing mm10 GTF file.
  type: File
  inputBinding:
    prefix: --mm10-gtf-path
- id: in_zv_nine_gtf_path
  doc: Path to an already existing zv9 GTF file.
  type: File
  inputBinding:
    prefix: --zv9-gtf-path
- id: in_zv_one_zero_gtf_path
  doc: Path to an already existing zv10 GTF file.
  type: File
  inputBinding:
    prefix: --zv10-gtf-path
- id: in_hg_three_eight_rm
  doc: Fetch repeat masker files for hg38 from Broad
  type: boolean
  inputBinding:
    prefix: --hg38-rm
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- setupGenomicData.py
