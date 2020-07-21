class: CommandLineTool
id: ../../../uint8_to_bed.py.cwl
inputs:
- id: c_two_t
  doc: If using converted genomes specify -C2T or -G2A
  type: boolean
  inputBinding:
    prefix: -C2T
- id: g_two_a
  doc: If using converted genomes specify -C2T or -G2A
  type: boolean
  inputBinding:
    prefix: -G2A
- id: chr_size_path
  doc: /../chrsize.tsv from out_dir
  type: string[]
  inputBinding:
    prefix: -chrsize_path
- id: write_unique
  doc: If -Bismap is true and want to store the merged uint file, specify this option
  type: boolean
  inputBinding:
    prefix: -WriteUnique
- id: wiggle
  doc: If specified, will generate wiggle files for each chromosome. Make sure to
    specify -job_id or run in job array for parallel computation.
  type: boolean
  inputBinding:
    prefix: -wiggle
- id: bed_graph
  doc: If specified, will generate one bedGraph file for each chromosome. Make sure
    to specify -job_id or run in job array for parallel computation.
  type: boolean
  inputBinding:
    prefix: -bedGraph
- id: bed
  doc: If specified, will generate bed files that specify all of the regions in the
    genome that are uniquely mappable by each of the k-mers
  type: boolean
  inputBinding:
    prefix: -bed
- id: km_ers
  doc: '[KMERS [KMERS ...]] Specify kmers separated by space such as: -kmers k10 k20'
  type: boolean
  inputBinding:
    prefix: -kmers
- id: job_id
  doc: If not using job array, specify this index which will be used for selecting
    the chromosomes
  type: string
  inputBinding:
    prefix: -job_id
- id: var_id
  doc: Environmental variable for finding chromosome indices
  type: string
  inputBinding:
    prefix: -var_id
- id: in_dir
  doc: folder with <chrom>.uint8.unique.gz files
  type: string
  inputBinding:
    position: 0
- id: out_dir
  doc: Folder for writing the output files
  type: string
  inputBinding:
    position: 1
- id: out_label
  doc: File names would be kmer.<out_label>.bed.gz
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- uint8_to_bed.py
