class: CommandLineTool
id: advntr_genotype.cwl
inputs:
- id: in_alignment_file
  doc: alignment file in SAM/BAM/CRAM format
  type: File?
  inputBinding:
    prefix: --alignment_file
- id: in_reference_filename
  doc: "path to a FASTA-formatted reference file for CRAM files. It overrides\nfilename\
    \ specified in header, which is normally used to find the reference"
  type: File?
  inputBinding:
    prefix: --reference_filename
- id: in_fast_a
  doc: Fasta file containing raw reads
  type: File?
  inputBinding:
    prefix: --fasta
- id: in_pac_bio
  doc: set this flag if input file contains PacBio reads instead of Illumina reads
  type: boolean?
  inputBinding:
    prefix: --pacbio
- id: in_nano_pore
  doc: set this flag if input file contains Nanopore MinION reads instead of
  type: boolean?
  inputBinding:
    prefix: --nanopore
- id: in_frameshift
  doc: "set this flag to search for frameshifts in VNTR instead of copy number.\n\
    Supported VNTR IDs: [25561, 519759]"
  type: boolean?
  inputBinding:
    prefix: --frameshift
- id: in_expansion
  doc: set this flag to determine long expansion from PCR-free data
  type: boolean?
  inputBinding:
    prefix: --expansion
- id: in_coverage
  doc: average sequencing coverage in PCR-free sequencing
  type: double?
  inputBinding:
    prefix: --coverage
- id: in_haploid
  doc: set this flag if the organism is haploid
  type: boolean?
  inputBinding:
    prefix: --haploid
- id: in_naive
  doc: use naive approach for PacBio reads
  type: boolean?
  inputBinding:
    prefix: --naive
- id: in_working_directory
  doc: working directory for creating temporary files needed for computation
  type: File?
  inputBinding:
    prefix: --working_directory
- id: in_models
  doc: VNTR models file [vntr_data/hg19_selected_VNTRs_Illumina.db]
  type: File?
  inputBinding:
    prefix: --models
- id: in_threads
  doc: number of threads [1]
  type: long?
  inputBinding:
    prefix: --threads
- id: in_update
  doc: set this flag to iteratively update the model
  type: boolean?
  inputBinding:
    prefix: --update
- id: in_vntr_id
  doc: comma-separated list of VNTR IDs
  type: string?
  inputBinding:
    prefix: --vntr_id
- id: in_illumina
  doc: -o/--outfile <file>             file to write results. adVNTR writes output
    to stdout if oufile is not
  type: string
  inputBinding:
    position: 0
- id: in_specified_dot
  doc: -of/--outfmt <format>           output format. Allowed values are {text, bed}
    [text]
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- advntr
- genotype
