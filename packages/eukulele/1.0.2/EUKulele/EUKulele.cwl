class: CommandLineTool
id: EUKulele.cwl
inputs:
- id: in_config_file
  doc: "The percentage of the total available memory which\nshould be targeted for\
    \ use by processes."
  type: File?
  inputBinding:
    prefix: --config_file
- id: in_use_salmon_counts
  doc: "Salmon directory is required if use_salmon_counts is\ntrue."
  type: Directory?
  inputBinding:
    prefix: --use_salmon_counts
- id: in_names_to_reads
  doc: "A file to be created or used if it exists that relates\ntranscript names to\
    \ salmon counts from the salmon\ndirectory."
  type: File?
  inputBinding:
    prefix: --names_to_reads
- id: in_database
  doc: "The name of the database to be used to assess the\nreads."
  type: string?
  inputBinding:
    prefix: --database
- id: in_output_dir
  doc: Folder where the output will be written.
  type: Directory?
  inputBinding:
    prefix: --output_dir
- id: in_sample_dir
  doc: "Folder where the input data is located (the protein or\npeptide files to be\
    \ assessed)."
  type: Directory?
  inputBinding:
    prefix: --sample_dir
- id: in_reference_dir
  doc: "Folder containing the reference files for the chosen\ndatabase."
  type: Directory?
  inputBinding:
    prefix: --reference_dir
- id: in_ref_fast_a
  doc: "Either a file in the reference directory where the\nfasta file for the database\
    \ is located, or a directory\ncontaining multiple fasta files that constitute\
    \ the\ndatabase."
  type: File?
  inputBinding:
    prefix: --ref_fasta
- id: in_alignment_choice
  doc: "If specified, the following two arguments ('--\norganisms' and '--taxonomy_organisms'\
    \ are overwritten\nby the two columns of this tab-separated file."
  type: File?
  inputBinding:
    prefix: --alignment_choice
- id: in_individual_or_summary
  doc: These arguments are used if 'individual' is specified.
  type: string?
  inputBinding:
    prefix: --individual_or_summary
- id: in_individual
  doc: List of organisms to check BUSCO completeness on.
  type: string[]
  inputBinding:
    prefix: --individual
- id: in_taxonomy_organisms
  doc: "Taxonomic level of organisms specified in organisms\ntag."
  type: string[]
  inputBinding:
    prefix: --taxonomy_organisms
- id: in_trans_decoder_or_f_size
  doc: "Whether to create FASTA files containing ID'd\ntranscripts during BUSCO analysis."
  type: File?
  inputBinding:
    prefix: --transdecoder_orfsize
- id: in_run_trans_decoder
  doc: "Whether TransDecoder should be run on\nmetatranscriptomic samples. Otherwise,\
    \ BLASTp is run\nif protein translated samples are providedotherwise\nBLASTx is\
    \ run on nucleotide samples."
  type: boolean?
  inputBinding:
    prefix: --run_transdecoder
- id: in_test
  doc: "Whether we're just running a test and should not\nexecute downloads.\n"
  type: boolean?
  inputBinding:
    prefix: --test
- id: in_mets_or_mags
  doc: ''
  type: boolean?
  inputBinding:
    prefix: --mets_or_mags
- id: in_subroutine
  doc: Choice of subroutine to run.
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_dir
  doc: Folder where the output will be written.
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output_dir)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/eukulele:1.0.2--pyhcb32578_1
cwlVersion: v1.1
baseCommand:
- EUKulele
