class: CommandLineTool
id: dnase_bias_estimator.py.cwl
inputs:
- id: regions
  doc: BED file of the regions you want to exclude from calculating the bias. This
    is usually the DHSs.
  type: string
  inputBinding:
    position: 0
- id: reads
  doc: The sorted, indexed BAM file containing the DNase-seq data
  type: string
  inputBinding:
    position: 1
- id: genome_sequence
  doc: The sorted, indexed FASTA file containing the genome sequence
  type: string
  inputBinding:
    position: 2
- id: genome_size
  doc: The .chrom.sizes file containing chromosome sizes generated using something
    like "mysql --user=genome --host=genome- mysql.cse.ucsc.edu -A -e "select chrom,
    size from hg19.chromInfo" > hg19.chrom.sizes"
  type: string
  inputBinding:
    position: 3
- id: output
  doc: output file prefix to write the observed/expected ratios to (will append .txt
    and .pickle)
  type: string
  inputBinding:
    position: 4
outputs: []
cwlVersion: v1.1
baseCommand:
- dnase_bias_estimator.py
