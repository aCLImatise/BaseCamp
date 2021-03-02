class: CommandLineTool
id: asn2idx.cwl
inputs:
- id: in_path_to_files
  doc: Path to Files [String]
  type: boolean?
  inputBinding:
    prefix: -p
- id: in_path_results_optional
  doc: Path for Results [String]  Optional
  type: boolean?
  inputBinding:
    prefix: -r
- id: in_required_subdirectory_optional
  doc: Required Subdirectory [String]  Optional
  type: boolean?
  inputBinding:
    prefix: -d
- id: in_file_selection_substring
  doc: "File Selection Substring [String]  Optional\ndefault = .aso"
  type: boolean?
  inputBinding:
    prefix: -x
- id: in_filter_default_gbcongbestgbgssgbhtggbsts
  doc: "Filter [String]\ndefault = gbcon,gbest,gbgss,gbhtg,gbsts"
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_bioseqsets_binary_optionaldefault
  doc: "Bioseq-sets are Binary [T/F]  Optional\ndefault = F"
  type: boolean?
  inputBinding:
    prefix: -b
- id: in_recurse_optionaldefault_f
  doc: "Recurse [T/F]  Optional\ndefault = F\n"
  type: boolean?
  inputBinding:
    prefix: -t
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- asn2idx
