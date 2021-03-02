class: CommandLineTool
id: agfusion_batch.cwl
inputs:
- id: in_file
  doc: Output file from fusion-finding algorithm.
  type: File?
  inputBinding:
    prefix: --file
- id: in_algorithm
  doc: "The fusion-finding algorithm. Can be one of the\nfollowing: bellerophontes,\
    \ breakfusion, chimerascan,\nchimerscope, defuse, ericscript, fusioncatcher,\n\
    fusionhunter, fusionmap, fusioninspector, infusion,\njaffa, mapsplice, starfusion,\
    \ tophatfusion."
  type: string?
  inputBinding:
    prefix: --algorithm
- id: in_database
  doc: "Path to the AGFusion database (e.g. --db\n/path/to/agfusion.homo_sapiens.87.db)"
  type: File?
  inputBinding:
    prefix: --database
- id: in_out
  doc: Directory to save results
  type: Directory?
  inputBinding:
    prefix: --out
- id: in_noncanonical
  doc: "(Optional) Include non-canonical gene transcripts in\nthe analysis (default\
    \ False)."
  type: boolean?
  inputBinding:
    prefix: --noncanonical
- id: in_protein_databases
  doc: "(Optional) Space-delimited list of one or more protein\nfeature databases\
    \ to include when visualizing\nproteins. Options are: pfam, smart, superfamily,\n\
    tigrfam, pfscan (Prosite_profiles), tmhmm (i.e.\ntransmembrane), seg (low_complexity\
    \ regions), ncoils\n(coiled coil regions), prints, pirsf, and signalp\n(signal\
    \ peptide regions) (default: --protein_databases\npfam and tmhmm)."
  type: string[]
  inputBinding:
    prefix: --protein_databases
- id: in_re_color
  doc: "(Optional) Re-color a domain. Provide the original\nname of the domain then\
    \ your color (semi-colon\ndelimited, all in quotes). Can specify --recolor\nmultiples\
    \ for each domain. (e.g. --color\n\"Pkinase_Tyr;blue\" --color \"I-set;#006600\"\
    )."
  type: long?
  inputBinding:
    prefix: --recolor
- id: in_rename
  doc: "(Optional) Rename a domain. Provide the original name\nof the domain then\
    \ your new name (semi-colon\ndelimited, all in quotes). Can specify --rename\n\
    multiples for each domain. (e.g. --rename\n\"Pkinase_Tyr;Kinase\")."
  type: string?
  inputBinding:
    prefix: --rename
- id: in_exclude_domain
  doc: "(Optional) Exclude a certain domain(s) from plotting\nby providing a space-separated\
    \ list of domain names."
  type: string[]
  inputBinding:
    prefix: --exclude_domain
- id: in_type
  doc: '(Optional) Image file type (png, jpeg, pdf). Default:'
  type: File?
  inputBinding:
    prefix: --type
- id: in_height
  doc: (Optional) Image file height in inches (default 3).
  type: File?
  inputBinding:
    prefix: --height
- id: in_dpi
  doc: (Optional) Dots per inch.
  type: string?
  inputBinding:
    prefix: --dpi
- id: in_font_size
  doc: (Optional) Fontsize (default 12).
  type: long?
  inputBinding:
    prefix: --fontsize
- id: in_wt
  doc: "(Optional) Include this to plot wild-type\narchitechtures of the 5' and 3'\
    \ genes"
  type: boolean?
  inputBinding:
    prefix: --WT
- id: in_middle_star
  doc: "(Optional) Insert a * at the junction position for the\ncdna, cds, and protein\
    \ sequences (default False)."
  type: boolean?
  inputBinding:
    prefix: --middlestar
- id: in_no_domain_labels
  doc: (Optional) Do not label domains.
  type: boolean?
  inputBinding:
    prefix: --no_domain_labels
- id: in_debug
  doc: (Optional) Enable debugging logging.
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_png
  doc: -w WIDTH, --width WIDTH
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_file
  doc: Output file from fusion-finding algorithm.
  type: File?
  outputBinding:
    glob: $(inputs.in_file)
hints: []
cwlVersion: v1.1
baseCommand:
- agfusion
- batch
