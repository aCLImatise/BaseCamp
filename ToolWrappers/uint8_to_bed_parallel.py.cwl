class: CommandLineTool
id: uint8_to_bed_parallel.py.cwl
inputs:
- id: in_c_two_t
  doc: If using converted genomes specify -C2T or -G2A
  type: boolean
  inputBinding:
    prefix: -C2T
- id: in_g_two_a
  doc: If using converted genomes specify -C2T or -G2A
  type: boolean
  inputBinding:
    prefix: -G2A
- id: in_chr_size_path
  doc: /../chrsize.tsv from out_dir
  type: string[]
  inputBinding:
    prefix: -chrsize_path
- id: in_write_unique
  doc: "If -Bismap is true and want to store the merged uint\nfile, specify this option"
  type: boolean
  inputBinding:
    prefix: -WriteUnique
- id: in_wiggle
  doc: "If specified, will generate wiggle files for each\nchromosome. Make sure to\
    \ specify -job_id or run in job\narray for parallel computation."
  type: boolean
  inputBinding:
    prefix: -wiggle
- id: in_bed
  doc: "If specified, will generate bed files that specify all\nof the regions in\
    \ the genome that are uniquely\nmappable by each of the k-mers"
  type: boolean
  inputBinding:
    prefix: -bed
- id: in_km_ers
  doc: "[KMERS [KMERS ...]]\nSpecify kmers separated by space such as: -kmers k10\n\
    k20"
  type: boolean
  inputBinding:
    prefix: -kmers
- id: in_job_id
  doc: "If not using job array, specify this index which will\nbe used for selecting\
    \ the chromosomes"
  type: string
  inputBinding:
    prefix: -job_id
- id: in_var_id
  doc: Environmental variable for finding chromosome indices
  type: string
  inputBinding:
    prefix: -var_id
- id: in_in_dir
  doc: folder with <chrom>.uint8.unique.gz files
  type: string
  inputBinding:
    position: 0
- id: in_out_dir
  doc: Folder for writing the output files
  type: string
  inputBinding:
    position: 1
- id: in_out_label
  doc: File names would be kmer.<out_label>.bed.gz
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- uint8_to_bed_parallel.py
