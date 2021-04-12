class: CommandLineTool
id: constax.cwl
inputs:
- id: in_conf
  doc: Classification confidence threshold
  type: long?
  inputBinding:
    prefix: --conf
- id: in_num_threads
  doc: Number of threads to use
  type: long?
  inputBinding:
    prefix: --num_threads
- id: in_max_hits
  doc: Maximum number of BLAST hits to use, for use with -b option
  type: long?
  inputBinding:
    prefix: --max_hits
- id: in_evalue
  doc: Maximum expect value of BLAST hits to use, for use with -b option
  type: long?
  inputBinding:
    prefix: --evalue
- id: in_p_iden
  doc: Minimum proportion identity of BLAST hits to use, for use with -b option
  type: long?
  inputBinding:
    prefix: --p_iden
- id: in_db
  doc: Database to train classifiers
  type: boolean?
  inputBinding:
    prefix: --db
- id: in_train_file
  doc: =./training_files                    Path to which training files will be written
  type: boolean?
  inputBinding:
    prefix: --trainfile
- id: in_input
  doc: Input file in FASTA format containing sequence records to classify
  type: File?
  inputBinding:
    prefix: --input
- id: in_output
  doc: =./outputs                              Output directory for classifications
  type: Directory?
  inputBinding:
    prefix: --output
- id: in_tax
  doc: =./taxonomy_assignments                    Directory for taxonomy assignments
  type: boolean?
  inputBinding:
    prefix: --tax
- id: in_train
  doc: Complete training if specified
  type: boolean?
  inputBinding:
    prefix: --train
- id: in_blast
  doc: Use BLAST instead of UTAX if specified
  type: boolean?
  inputBinding:
    prefix: --blast
- id: in_select_by_keyword
  doc: Takes a keyword argument and --input FASTA file to produce a filtered database
    with headers containing the keyword with name --output
  type: boolean?
  inputBinding:
    prefix: --select_by_keyword
- id: in_msu_hpcc
  doc: If specified, use executable paths on Michigan State University HPCC. Overrides
    other path arguments
  type: boolean?
  inputBinding:
    prefix: --msu_hpcc
- id: in_conservative
  doc: If specified, use conservative consensus rule (2 null = null winner)
  type: boolean?
  inputBinding:
    prefix: --conservative
- id: in_make_plot
  doc: If specified, run R script to make plot of classified taxa
  type: boolean?
  inputBinding:
    prefix: --make_plot
- id: in_check
  doc: If specified, runs checks but stops before training or classifying
  type: boolean?
  inputBinding:
    prefix: --check
- id: in_mem
  doc: Memory available to use for RDP, in MB. 32000MB recommended for UNITE, 128000MB
    for SILVA
  type: boolean?
  inputBinding:
    prefix: --mem
- id: in_sin_tax_path
  doc: Path to USEARCH/VSEARCH executable for SINTAX classification
  type: boolean?
  inputBinding:
    prefix: --sintax_path
- id: in_u_tax_path
  doc: Path to USEARCH executable for UTAX classification
  type: boolean?
  inputBinding:
    prefix: --utax_path
- id: in_rdp_path
  doc: Path to RDP classifier.jar file
  type: boolean?
  inputBinding:
    prefix: --rdp_path
- id: in_cons_tax_path
  doc: Path to CONSTAX scripts
  type: boolean?
  inputBinding:
    prefix: --constax_path
- id: in_path_file
  doc: File with paths to SINTAX, UTAX, RDP, and CONSTAX executables
  type: boolean?
  inputBinding:
    prefix: --pathfile
- id: in_isolates
  doc: FASTA formatted file of isolates to use BLAST against
  type: boolean?
  inputBinding:
    prefix: --isolates
- id: in_isolates_query_coverage
  doc: Threshold of sequence query coverage to report isolate matches
  type: long?
  inputBinding:
    prefix: --isolates_query_coverage
- id: in_isolates_percent_identity
  doc: Threshold of aligned sequence percent identity to report isolate matches
  type: long?
  inputBinding:
    prefix: --isolates_percent_identity
- id: in_high_level_db
  doc: FASTA database file of representative sequences for assignment of high level
    taxonomy
  type: boolean?
  inputBinding:
    prefix: --high_level_db
- id: in_high_level_query_coverage
  doc: Threshold of sequence query coverage to report high-level taxonomy matches
  type: long?
  inputBinding:
    prefix: --high_level_query_coverage
- id: in_high_level_percent_identity
  doc: Threshold of aligned sequence percent identity to report high-level taxonomy
    matches
  type: long?
  inputBinding:
    prefix: --high_level_percent_identity
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: =./outputs                              Output directory for classifications
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/constax:2.0.8--py_0
cwlVersion: v1.1
baseCommand:
- constax
