class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/check_structure.cwl
inputs:
- id: input
  doc: Input structure. Formats PDB|mmCIF. Remote pdb:{pdbid}
  type: string
  inputBinding:
    prefix: --input
- id: file_format
  doc: Format for retrieving structures (default=mmCif|pdb|xml)
  type: File
  inputBinding:
    prefix: --file_format
- id: sequence
  doc: Canonical sequence in FASTA format, pdb_chain[,chain] in header
  type: string
  inputBinding:
    prefix: --sequence
- id: pdb_server
  doc: Server for retrieving structures (default|MMB)
  type: string
  inputBinding:
    prefix: --pdb_server
- id: cache_dir
  doc: "Path for structure's cache directory (default: ./tmpPDB)"
  type: string
  inputBinding:
    prefix: --cache_dir
- id: modeller_key
  doc: User key for modeller, required for backbone fix, register at https://salilab.org/modeller/registration.html
  type: string
  inputBinding:
    prefix: --modeller_key
- id: res_lib
  doc: Override settings default residue library (AMBER prep format)
  type: string
  inputBinding:
    prefix: --res_lib
- id: data_lib
  doc: Override settings default data library
  type: string
  inputBinding:
    prefix: --data_lib
- id: output
  doc: Output structure. Format PDB
  type: string
  inputBinding:
    prefix: --output
- id: json
  doc: Summary checking results on a json file
  type: string
  inputBinding:
    prefix: --json
- id: quiet
  doc: Reduces output, removing labels and progress info
  type: boolean
  inputBinding:
    prefix: --quiet
- id: limit
  doc: Limit on number of atoms,0:nolimit
  type: string
  inputBinding:
    prefix: --limit
- id: debug
  doc: Add debug information
  type: boolean
  inputBinding:
    prefix: --debug
- id: force_save
  doc: Force saving an output file even if no modification
  type: boolean
  inputBinding:
    prefix: --force_save
- id: check_only
  doc: Perform checks only, structure is not modified
  type: boolean
  inputBinding:
    prefix: --check_only
- id: non_interactive
  doc: Do not prompt for missing parameters
  type: boolean
  inputBinding:
    prefix: --non_interactive
- id: command
  doc: 'Command to execute (help: check_structure commands)'
  type: string
  inputBinding:
    position: 0
- id: options
  doc: Specific command options
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- check_structure
