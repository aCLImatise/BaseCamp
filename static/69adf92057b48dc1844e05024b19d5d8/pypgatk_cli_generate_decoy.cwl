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
- id: in_method
  doc: "[protein-reverse|protein-shuffle|decoypyrat|pgdbdeep]\nThe method that would\
    \ be used to generate\nthe decoys: protein-reverse: reverse protein\nsequences\
    \ protein-shuffle: shuffle protein\nsequences decoypyrat: method developed for\n\
    proteogenomics that shuffle redundant\npeptides in decoy databases pgdbdeep: method\n\
    developed for proteogenomics developed by\npypgatk"
  type: boolean?
  inputBinding:
    prefix: --method
- id: in_decoy_prefix
  doc: "Set accession prefix for decoy proteins in\noutput. Default=DECOY_"
  type: string?
  inputBinding:
    prefix: --decoy_prefix
- id: in_enzyme
  doc: "[Trypsin|Arg-C|Arg-C/P|Asp-N|Asp-N/B|Asp-N_ambic|Chymotrypsin|Chymotrypsin/P|CNBr|Formic_acid|Lys-C|Lys-N|Lys-C/P|PepsinA|TrypChymo|Trypsin/P|V8-DE|V8-E|leukocyte\
    \ elastase|proline endopeptidase|glutamyl endopeptidase|alphaLP|2-iodobenzoate|iodosobenzoate|staphylococcal\
    \ protease/D|proline-endopeptidase/HKR|Glu-C+P|PepsinA + P|cyanogen-bromide|Clostripain/P|elastase-trypsin-chymotrypsin|unspecific\
    \ cleavage]\nEnzyme used for clevage the protein sequence\n(Default: Trypsin)"
  type: boolean?
  inputBinding:
    prefix: --enzyme
- id: in_cleavage_position
  doc: "[c|n]       Set cleavage to be c or n terminal of\nspecified cleavage sites.\
    \ Options [c, n],\nDefault = c"
  type: boolean?
  inputBinding:
    prefix: --cleavage_position
- id: in_max_missed_cleavages
  doc: "Number of allowed missed cleavages in the\nprotein sequence when digestion\
    \ is performed"
  type: long?
  inputBinding:
    prefix: --max_missed_cleavages
- id: in_min_peptide_length
  doc: Set minimum length of peptides (Default = 5)
  type: long?
  inputBinding:
    prefix: --min_peptide_length
- id: in_max_peptide_length
  doc: "Set maximum length of peptides (Default =\n100)"
  type: long?
  inputBinding:
    prefix: --max_peptide_length
- id: in_max_iterations
  doc: "Set maximum number of times to shuffle a\npeptide to make it non-target before\n\
    failing. Default=100"
  type: long?
  inputBinding:
    prefix: --max_iterations
- id: in_do_not_shuffle
  doc: "Turn OFF shuffling of decoy peptides that\nare in the target database. Default=false"
  type: boolean?
  inputBinding:
    prefix: --do_not_shuffle
- id: in_do_not_switch
  doc: "Turn OFF switching of cleavage site with\npreceding amino acid. Default=false"
  type: boolean?
  inputBinding:
    prefix: --do_not_switch
- id: in_temp_file
  doc: "Set temporary file to write decoys prior to\nshuffling. Default=tmp.fa"
  type: File?
  inputBinding:
    prefix: --temp_file
- id: in_no_isobaric
  doc: "Do not make decoy peptides isobaric.\nDefault=false"
  type: boolean?
  inputBinding:
    prefix: --no_isobaric
- id: in_keep_target_hits
  doc: Keep peptides duplicate in target and decoy
  type: boolean?
  inputBinding:
    prefix: --keep_target_hits
- id: in_databases
  doc: --memory_save                   Slower but uses less memory (does not store
  type: string
  inputBinding:
    position: 0
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
  dockerPull: quay.io/biocontainers/pypgatk:0.0.16--py_0
cwlVersion: v1.1
baseCommand:
- pypgatk_cli
- generate-decoy
