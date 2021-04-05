class: CommandLineTool
id: leviosam.cwl
inputs:
- id: in_build_leviosam_index
  doc: Build a leviosam index using a VCF file.
  type: File?
  inputBinding:
    prefix: -v
- id: in_sample_used_build
  doc: The sample used to build leviosam index (-v needs to be set).
  type: string?
  inputBinding:
    prefix: -s
- id: in_prefix_output_file
  doc: The prefix of the output file.
  type: File?
  inputBinding:
    prefix: -p
- id: in_output_file_format
  doc: Output file format, can be sam or bam. [sam]
  type: File?
  inputBinding:
    prefix: -O
- id: in_haplotype_used_index
  doc: /1    The haplotype used to index leviosam. [0]
  type: long?
  inputBinding:
    prefix: -g
- id: in_path_name_map
  doc: "Path to a name map file.\nThis can be used to map '1' to 'chr1', or vice versa."
  type: File?
  inputBinding:
    prefix: -n
- id: in_path_length_map
  doc: Path to a length map file.
  type: long?
  inputBinding:
    prefix: -k
- id: in_path_be_liftedleave
  doc: "Path to the SAM/BAM file to be lifted.\nLeave empty or set to \"-\" to read\
    \ from stdin."
  type: File?
  inputBinding:
    prefix: -a
- id: in_path_leviosam_index
  doc: Path to a leviosam index.
  type: File?
  inputBinding:
    prefix: -l
- id: in_number_threads_used
  doc: Number of threads used. [1]
  type: long?
  inputBinding:
    prefix: -t
- id: in_chunk_size_queries
  doc: "Chunk size for each thread. [256]\nEach thread queries <-T> reads, lifts,\
    \ and writes.\nSetting a higher <-T> uses slightly more memory but might benefit\
    \ thread scaling."
  type: long?
  inputBinding:
    prefix: -T
- id: in_add_md_nm
  doc: add MD and NM to output alignment records (requires -f option)
  type: boolean?
  inputBinding:
    prefix: -m
- id: in_fasta_reference_corresponds
  doc: Fasta reference that corresponds to input SAM/BAM (for use w/ -m option)
  type: string?
  inputBinding:
    prefix: -f
- id: in_lift
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_serialize
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_prefix_output_file
  doc: The prefix of the output file.
  type: File?
  outputBinding:
    glob: $(inputs.in_prefix_output_file)
- id: out_output_file_format
  doc: Output file format, can be sam or bam. [sam]
  type: File?
  outputBinding:
    glob: $(inputs.in_output_file_format)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/leviosam:3.1.1--hc9558a2_0
cwlVersion: v1.1
baseCommand:
- leviosam
