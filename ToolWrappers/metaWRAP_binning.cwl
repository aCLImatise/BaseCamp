class: CommandLineTool
id: metaWRAP_binning.cwl
inputs:
- id: in_metagenomic_assembly_file
  doc: metagenomic assembly file
  type: File
  inputBinding:
    prefix: -a
- id: in_output_directory
  doc: output directory
  type: Directory
  inputBinding:
    prefix: -o
- id: in_number_threads_default
  doc: number of threads (default=1)
  type: long
  inputBinding:
    prefix: -t
- id: in_amount_ram_available
  doc: amount of RAM available (default=4)
  type: long
  inputBinding:
    prefix: -m
- id: in_minimum_contig_length
  doc: 'minimum contig length to bin (default=1000bp). Note: metaBAT will default
    to 1500bp minimum'
  type: long
  inputBinding:
    prefix: -l
- id: in_metab_at_two
  doc: bin contigs with metaBAT2
  type: boolean
  inputBinding:
    prefix: --metabat2
- id: in_metab_at_one
  doc: bin contigs with the original metaBAT
  type: boolean
  inputBinding:
    prefix: --metabat1
- id: in_max_bin_two
  doc: bin contigs with MaxBin2
  type: boolean
  inputBinding:
    prefix: --maxbin2
- id: in_concoct
  doc: bin contigs with CONCOCT
  type: boolean
  inputBinding:
    prefix: --concoct
- id: in_universal
  doc: use universal marker genes instead of bacterial markers in MaxBin2 (improves
    Archaea binning)
  type: boolean
  inputBinding:
    prefix: --universal
- id: in_run_check_m
  doc: immediately run CheckM on the bin results (requires 40GB+ of memory)
  type: boolean
  inputBinding:
    prefix: --run-checkm
- id: in_single_end
  doc: non-paired reads mode (provide *.fastq files)
  type: boolean
  inputBinding:
    prefix: --single-end
- id: in_interleaved
  doc: the input read files contain interleaved paired-end reads
  type: boolean
  inputBinding:
    prefix: --interleaved
- id: in_reads_x_one_dot_fast_q
  doc: ''
  type: long
  inputBinding:
    position: 0
- id: in_reads_x_two_dot_fast_q
  doc: ''
  type: long
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_directory
  doc: output directory
  type: Directory
  outputBinding:
    glob: $(inputs.in_output_directory)
cwlVersion: v1.1
baseCommand:
- metaWRAP
- binning
