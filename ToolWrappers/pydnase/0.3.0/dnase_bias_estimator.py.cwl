class: CommandLineTool
id: dnase_bias_estimator.py.cwl
inputs:
- id: in_calculates_mer_bias
  doc: Calculates the 6-mer 5' insertion bias for a NGS dataset
  type: string
  inputBinding:
    position: 0
- id: in_regions
  doc: "BED file of the regions you want to exclude from\ncalculating the bias. This\
    \ is usually the DHSs."
  type: string
  inputBinding:
    position: 0
- id: in_reads
  doc: The sorted, indexed BAM file containing the DNase-seq data
  type: string
  inputBinding:
    position: 1
- id: in_genome_sequence
  doc: The sorted, indexed FASTA file containing the genome
  type: string
  inputBinding:
    position: 2
- id: in_sequence
  doc: genome_size      The .chrom.sizes file containing chromosome sizes generated
  type: string
  inputBinding:
    position: 3
- id: in_output_file_prefix
  doc: "output file prefix to write the observed/expected ratios to\n(will append\
    \ .txt and .pickle)"
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- dnase_bias_estimator.py
