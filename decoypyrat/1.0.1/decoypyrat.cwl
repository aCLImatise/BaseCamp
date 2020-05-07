class: CommandLineTool
id: decoypyrat.cwl
inputs:
- id: cleavage_sites
  doc: A list of amino acids at which to cleave during digestion. Default = KR
  type: string
  inputBinding:
    prefix: --cleavage_sites
- id: anti_cleavage_sites
  doc: A list of amino acids at which not to cleave if following cleavage site ie.
    Proline. Default = none
  type: string
  inputBinding:
    prefix: --anti_cleavage_sites
- id: cleavage_position
  doc: Set cleavage to be c or n terminal of specified cleavage sites. Default = c
  type: string
  inputBinding:
    prefix: --cleavage_position
- id: min_peptide_length
  doc: Set minimum length of peptides to compare between target and decoy. Default
    = 5
  type: long
  inputBinding:
    prefix: --min_peptide_length
- id: max_iterations
  doc: Set maximum number of times to shuffle a peptide to make it non-target before
    failing. Default=100
  type: long
  inputBinding:
    prefix: --max_iterations
- id: do_not_shuffle
  doc: Turn OFF shuffling of decoy peptides that are in the target database. Default=false
  type: boolean
  inputBinding:
    prefix: --do_not_shuffle
- id: do_not_switch
  doc: Turn OFF switching of cleavage site with preceding amino acid. Default=false
  type: boolean
  inputBinding:
    prefix: --do_not_switch
- id: decoy_prefix
  doc: Set accesion prefix for decoy proteins in output. Default=XXX
  type: string
  inputBinding:
    prefix: --decoy_prefix
- id: output_fast_a
  doc: Set file to write decoy proteins to. Default=decoy.fa
  type: string
  inputBinding:
    prefix: --output_fasta
- id: temp_file
  doc: Set temporary file to write decoys prior to shuffling. Default=tmp.fa
  type: string
  inputBinding:
    prefix: --temp_file
- id: no_isobaric
  doc: Do not make decoy peptides isobaric. Default=false
  type: boolean
  inputBinding:
    prefix: --no_isobaric
- id: memory_save
  doc: Slower but uses less memory (does not store decoy peptide list). Default=false
  type: boolean
  inputBinding:
    prefix: --memory_save
- id: keep_names
  doc: Keep sequence names in the decoy output. Default=false
  type: boolean
  inputBinding:
    prefix: --keep_names
outputs: []
cwlVersion: v1.1
baseCommand:
- decoypyrat
