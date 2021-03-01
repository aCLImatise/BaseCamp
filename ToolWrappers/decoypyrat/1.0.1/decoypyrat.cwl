class: CommandLineTool
id: decoypyrat.cwl
inputs:
- id: in_cleavage_sites
  doc: "A list of amino acids at which to cleave during\ndigestion. Default = KR"
  type: string?
  inputBinding:
    prefix: --cleavage_sites
- id: in_anti_cleavage_sites
  doc: "A list of amino acids at which not to cleave if\nfollowing cleavage site ie.\
    \ Proline. Default = none"
  type: string?
  inputBinding:
    prefix: --anti_cleavage_sites
- id: in_cleavage_position
  doc: "Set cleavage to be c or n terminal of specified\ncleavage sites. Default =\
    \ c"
  type: string?
  inputBinding:
    prefix: --cleavage_position
- id: in_min_peptide_length
  doc: "Set minimum length of peptides to compare between\ntarget and decoy. Default\
    \ = 5"
  type: long?
  inputBinding:
    prefix: --min_peptide_length
- id: in_max_iterations
  doc: "Set maximum number of times to shuffle a peptide to\nmake it non-target before\
    \ failing. Default=100"
  type: long?
  inputBinding:
    prefix: --max_iterations
- id: in_do_not_shuffle
  doc: "Turn OFF shuffling of decoy peptides that are in the\ntarget database. Default=false"
  type: boolean?
  inputBinding:
    prefix: --do_not_shuffle
- id: in_do_not_switch
  doc: "Turn OFF switching of cleavage site with preceding\namino acid. Default=false"
  type: boolean?
  inputBinding:
    prefix: --do_not_switch
- id: in_decoy_prefix
  doc: "Set accesion prefix for decoy proteins in output.\nDefault=XXX"
  type: string?
  inputBinding:
    prefix: --decoy_prefix
- id: in_output_fast_a
  doc: Set file to write decoy proteins to. Default=decoy.fa
  type: File?
  inputBinding:
    prefix: --output_fasta
- id: in_temp_file
  doc: "Set temporary file to write decoys prior to shuffling.\nDefault=tmp.fa"
  type: File?
  inputBinding:
    prefix: --temp_file
- id: in_no_isobaric
  doc: Do not make decoy peptides isobaric. Default=false
  type: boolean?
  inputBinding:
    prefix: --no_isobaric
- id: in_memory_save
  doc: "Slower but uses less memory (does not store decoy\npeptide list). Default=false"
  type: boolean?
  inputBinding:
    prefix: --memory_save
- id: in_keep_names
  doc: Keep sequence names in the decoy output. Default=false
  type: boolean?
  inputBinding:
    prefix: --keep_names
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- decoypyrat
