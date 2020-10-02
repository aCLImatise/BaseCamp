class: CommandLineTool
id: kallisto_quant.cwl
inputs:
- id: in_index
  doc: "Filename for the kallisto index to be used for\nquantification"
  type: File
  inputBinding:
    prefix: --index
- id: in_output_dir
  doc: Directory to write output to
  type: Directory
  inputBinding:
    prefix: --output-dir
- id: in_bias
  doc: Perform sequence based bias correction
  type: boolean
  inputBinding:
    prefix: --bias
- id: in_bootstrap_samples
  doc: "Number of bootstrap samples (default: 0)\n--seed=INT                Seed for\
    \ the bootstrap sampling (default: 42)\n--plaintext               Output plaintext\
    \ instead of HDF5\n--fusion                  Search for fusions for Pizzly\n--single\
    \                  Quantify single-end reads\n--single-overhang         Include\
    \ reads where unobserved rest of fragment is\npredicted to lie outside a transcript\n\
    --fr-stranded             Strand specific reads, first read forward\n--rf-stranded\
    \             Strand specific reads, first read reverse"
  type: long
  inputBinding:
    prefix: --bootstrap-samples
- id: in_fragment_length
  doc: Estimated average fragment length
  type: long
  inputBinding:
    prefix: --fragment-length
- id: in_sd
  doc: "Estimated standard deviation of fragment length\n(default: -l, -s values are\
    \ estimated from paired\nend data, but are required when using --single)"
  type: long
  inputBinding:
    prefix: --sd
- id: in_threads
  doc: "Number of threads to use (default: 1)\n--pseudobam               Save pseudoalignments\
    \ to transcriptome to BAM file\n--genomebam               Project pseudoalignments\
    \ to genome sorted BAM file"
  type: long
  inputBinding:
    prefix: --threads
- id: in_gtf
  doc: "GTF file for transcriptome information\n(required for --genomebam)"
  type: boolean
  inputBinding:
    prefix: --gtf
- id: in_chromosomes
  doc: "Tab separated file with chromosome names and lengths\n(optional for --genomebam,\
    \ but recommended)"
  type: boolean
  inputBinding:
    prefix: --chromosomes
- id: in_verbose
  doc: Print out progress information every 1M proccessed reads
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_arguments
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_fast_q_files
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_dir
  doc: Directory to write output to
  type: Directory
  outputBinding:
    glob: $(inputs.in_output_dir)
cwlVersion: v1.1
baseCommand:
- kallisto
- quant
