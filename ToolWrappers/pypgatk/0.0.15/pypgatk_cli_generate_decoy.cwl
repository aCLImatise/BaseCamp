class: CommandLineTool
id: pypgatk_cli_generate_decoy.cwl
inputs:
- id: in_config_file
  doc: "Configuration file for the protein database\ndecoy generation"
  type: File?
  inputBinding:
    prefix: --config_file
- id: in_output_database
  doc: Output file for decoy database
  type: File?
  inputBinding:
    prefix: --output_database
- id: in_input_database
  doc: "FASTA file of target proteins sequences for\nwhich to create decoys (*.fasta|*.fa)"
  type: File?
  inputBinding:
    prefix: --input_database
- id: in_cleavage_sites
  doc: "A list of amino acids at which to cleave\nduring digestion. Default = KR"
  type: string?
  inputBinding:
    prefix: --cleavage_sites
- id: in_anti_cleavage_sites
  doc: "A list of amino acids at which not to cleave\nif following cleavage site ie.\
    \ Proline.\nDefault = none"
  type: string?
  inputBinding:
    prefix: --anti_cleavage_sites
- id: in_cleavage_position
  doc: "Set cleavage to be c or n terminal of\nspecified cleavage sites. Options [c,\
    \ n],\nDefault = c"
  type: string?
  inputBinding:
    prefix: --cleavage_position
- id: in_min_peptide_length
  doc: "Set minimum length of peptides to compare\nbetween target and decoy. Default\
    \ = 5"
  type: long?
  inputBinding:
    prefix: --min_peptide_length
- id: in_max_iterations
  doc: "Set maximum number of times to shuffle a\npeptide to make it non-target before\n\
    failing. Default=100"
  type: long?
  inputBinding:
    prefix: --max_iterations
- id: in_do_not_shuffle
  doc: "Turn OFF shuffling of decoy peptides that\nare in the target database. Default=false"
  type: string?
  inputBinding:
    prefix: --do_not_shuffle
- id: in_do_not_switch
  doc: "Turn OFF switching of cleavage site with\npreceding amino acid. Default=false"
  type: string?
  inputBinding:
    prefix: --do_not_switch
- id: in_decoy_prefix
  doc: "Set accession prefix for decoy proteins in\noutput. Default=DECOY_"
  type: string?
  inputBinding:
    prefix: --decoy_prefix
- id: in_temp_file
  doc: "Set temporary file to write decoys prior to\nshuffling. Default=protein-decoy.fa"
  type: File?
  inputBinding:
    prefix: --temp_file
- id: in_no_isobaric
  doc: "Do not make decoy peptides isobaric.\nDefault=false"
  type: string?
  inputBinding:
    prefix: --no_isobaric
- id: in_memory_save
  doc: "Slower but uses less memory (does not store\ndecoy peptide list). Default=false"
  type: string?
  inputBinding:
    prefix: --memory_save
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_database
  doc: Output file for decoy database
  type: File?
  outputBinding:
    glob: $(inputs.in_output_database)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/pypgatk:0.0.15--py_0
cwlVersion: v1.1
baseCommand:
- pypgatk_cli
- generate-decoy
