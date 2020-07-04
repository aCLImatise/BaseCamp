class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/advntr_genotype.cwl
inputs:
- id: a_slash_alignment_file
  doc: alignment file in SAM/BAM/CRAM format
  type: File
  inputBinding:
    prefix: -a/--alignment_file
- id: r_slash_reference_filename
  doc: path to a FASTA-formatted reference file for CRAM files. It overrides filename
    specified in header, which is normally used to find the reference
  type: File
  inputBinding:
    prefix: -r/--reference_filename
- id: f_slash_fast_a
  doc: Fasta file containing raw reads
  type: File
  inputBinding:
    prefix: -f/--fasta
- id: p_slash_pac_bio
  doc: set this flag if input file contains PacBio reads instead of Illumina reads
  type: boolean
  inputBinding:
    prefix: -p/--pacbio
- id: n_slash_nano_pore
  doc: set this flag if input file contains Nanopore MinION reads instead of Illumina
  type: boolean
  inputBinding:
    prefix: -n/--nanopore
- id: oslash_outfile
  doc: file to write results. adVNTR writes output to stdout if oufile is not specified.
  type: File
  inputBinding:
    prefix: -o/--outfile
- id: of_slash_out_fmt
  doc: output format. Allowed values are {text, bed} [text]
  type: string
  inputBinding:
    prefix: -of/--outfmt
- id: fs_slash_frameshift
  doc: 'set this flag to search for frameshifts in VNTR instead of copy number. Supported
    VNTR IDs: [25561, 519759]'
  type: boolean
  inputBinding:
    prefix: -fs/--frameshift
- id: e_slash_expansion
  doc: set this flag to determine long expansion from PCR-free data
  type: boolean
  inputBinding:
    prefix: -e/--expansion
- id: c_slash_coverage
  doc: average sequencing coverage in PCR-free sequencing
  type: double
  inputBinding:
    prefix: -c/--coverage
- id: haploid
  doc: set this flag if the organism is haploid
  type: boolean
  inputBinding:
    prefix: --haploid
- id: naive_slash_naive
  doc: use naive approach for PacBio reads
  type: boolean
  inputBinding:
    prefix: -naive/--naive
- id: h_slash_help
  doc: show this help message and exit
  type: boolean
  inputBinding:
    prefix: -h/--help
- id: working_directory
  doc: working directory for creating temporary files needed for computation
  type: File
  inputBinding:
    prefix: --working_directory
- id: m_slash_models
  doc: VNTR models file [vntr_data/hg19_selected_VNTRs_Illumina.db]
  type: File
  inputBinding:
    prefix: -m/--models
- id: t_slash_threads
  doc: number of threads [1]
  type: long
  inputBinding:
    prefix: -t/--threads
- id: us_lash_update
  doc: set this flag to iteratively update the model
  type: boolean
  inputBinding:
    prefix: -u/--update
- id: vid_slash_vntr_id
  doc: comma-separated list of VNTR IDs
  type: string
  inputBinding:
    prefix: -vid/--vntr_id
outputs: []
cwlVersion: v1.1
baseCommand:
- advntr
- genotype
