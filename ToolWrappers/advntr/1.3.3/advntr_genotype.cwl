class: CommandLineTool
id: advntr_genotype.cwl
inputs:
- id: in_a_slash_alignment_file
  doc: alignment file in SAM/BAM/CRAM format
  type: File
  inputBinding:
    prefix: -a/--alignment_file
- id: in_r_slash_reference_filename
  doc: "path to a FASTA-formatted reference file for CRAM files. It overrides\nfilename\
    \ specified in header, which is normally used to find the reference"
  type: File
  inputBinding:
    prefix: -r/--reference_filename
- id: in_f_slash_fast_a
  doc: Fasta file containing raw reads
  type: File
  inputBinding:
    prefix: -f/--fasta
- id: in_p_slash_pac_bio
  doc: set this flag if input file contains PacBio reads instead of Illumina reads
  type: boolean
  inputBinding:
    prefix: -p/--pacbio
- id: in_n_slash_nano_pore
  doc: set this flag if input file contains Nanopore MinION reads instead of
  type: boolean
  inputBinding:
    prefix: -n/--nanopore
- id: in_fs_slash_frameshift
  doc: "set this flag to search for frameshifts in VNTR instead of copy number.\n\
    Supported VNTR IDs: [25561, 519759]"
  type: boolean
  inputBinding:
    prefix: -fs/--frameshift
- id: in_e_slash_expansion
  doc: set this flag to determine long expansion from PCR-free data
  type: boolean
  inputBinding:
    prefix: -e/--expansion
- id: in_c_slash_coverage
  doc: average sequencing coverage in PCR-free sequencing
  type: double
  inputBinding:
    prefix: -c/--coverage
- id: in_haploid
  doc: set this flag if the organism is haploid
  type: boolean
  inputBinding:
    prefix: --haploid
- id: in_naive_slash_naive
  doc: use naive approach for PacBio reads
  type: boolean
  inputBinding:
    prefix: -naive/--naive
- id: in_h_slash_help
  doc: show this help message and exit
  type: boolean
  inputBinding:
    prefix: -h/--help
- id: in_working_directory
  doc: working directory for creating temporary files needed for computation
  type: File
  inputBinding:
    prefix: --working_directory
- id: in_m_slash_models
  doc: VNTR models file [vntr_data/hg19_selected_VNTRs_Illumina.db]
  type: File
  inputBinding:
    prefix: -m/--models
- id: in_t_slash_threads
  doc: number of threads [1]
  type: long
  inputBinding:
    prefix: -t/--threads
- id: in_us_lash_update
  doc: set this flag to iteratively update the model
  type: boolean
  inputBinding:
    prefix: -u/--update
- id: in_vid_slash_vntr_id
  doc: comma-separated list of VNTR IDs
  type: string
  inputBinding:
    prefix: -vid/--vntr_id
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
cwlVersion: v1.1
baseCommand:
- advntr
- genotype
