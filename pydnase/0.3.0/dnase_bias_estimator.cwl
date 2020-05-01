#!/usr/bin/env cwl-runner

baseCommand:
- dnase_bias_estimator.py
class: CommandLineTool
cwlVersion: v1.0
id: dnase_bias_estimator.py
inputs:
- doc: BED file of the regions you want to exclude from calculating the bias. This
    is usually the DHSs.
  id: regions
  inputBinding:
    position: 0
  type: string
- doc: The sorted, indexed BAM file containing the DNase-seq data
  id: reads
  inputBinding:
    position: 1
  type: string
- doc: The sorted, indexed FASTA file containing the genome sequence
  id: genome_sequence
  inputBinding:
    position: 2
  type: string
- doc: The .chrom.sizes file containing chromosome sizes generated using something
    like "mysql --user=genome --host=genome- mysql.cse.ucsc.edu -A -e "select chrom,
    size from hg19.chromInfo" > hg19.chrom.sizes"
  id: genome_size
  inputBinding:
    position: 3
  type: string
- doc: output file prefix to write the observed/expected ratios to (will append .txt
    and .pickle)
  id: output
  inputBinding:
    position: 4
  type: string
