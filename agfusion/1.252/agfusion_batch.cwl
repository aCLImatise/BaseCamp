class: CommandLineTool
id: agfusion_batch.cwl
inputs:
- id: file
  doc: Output file from fusion-finding algorithm.
  type: File
  inputBinding:
    prefix: --file
- id: algorithm
  doc: 'The fusion-finding algorithm. Can be one of the following: tophatfusion, infusion,
    breakfusion, fusioncatcher, fusionhunter, fusionmap, starfusion, jaffa, mapsplice,
    chimerascan, bellerophontes, fusioninspector, chimerscope, defuse, ericscript.'
  type: string
  inputBinding:
    prefix: --algorithm
- id: database
  doc: Path to the AGFusion database (e.g. --db /path/to/agfusion.homo_sapiens.87.db)
  type: string
  inputBinding:
    prefix: --database
- id: out
  doc: Directory to save results
  type: string
  inputBinding:
    prefix: --out
- id: noncanonical
  doc: (Optional) Include non-canonical gene transcripts in the analysis (default
    False).
  type: boolean
  inputBinding:
    prefix: --noncanonical
- id: protein_databases
  doc: '(Optional) Space-delimited list of one or more protein feature databases to
    include when visualizing proteins. Options are: pfam, smart, superfamily, tigrfam,
    pfscan (Prosite_profiles), tmhmm (i.e. transmembrane), seg (low_complexity regions),
    ncoils (coiled coil regions), prints, pirsf, and signalp (signal peptide regions)
    (default: --protein_databases pfam and tmhmm).'
  type: string[]
  inputBinding:
    prefix: --protein_databases
- id: re_color
  doc: (Optional) Re-color a domain. Provide the original name of the domain then
    your color (semi-colon delimited, all in quotes). Can specify --recolor multiples
    for each domain. (e.g. --color "Pkinase_Tyr;blue" --color "I-set;#006600").
  type: string
  inputBinding:
    prefix: --recolor
- id: rename
  doc: (Optional) Rename a domain. Provide the original name of the domain then your
    new name (semi-colon delimited, all in quotes). Can specify --rename multiples
    for each domain. (e.g. --rename "Pkinase_Tyr;Kinase").
  type: string
  inputBinding:
    prefix: --rename
- id: exclude_domain
  doc: (Optional) Exclude a certain domain(s) from plotting by providing a space-separated
    list of domain names.
  type: string[]
  inputBinding:
    prefix: --exclude_domain
- id: type
  doc: '(Optional) Image file type (png, jpeg, pdf). Default: png'
  type: string
  inputBinding:
    prefix: --type
- id: width
  doc: (Optional) Image width in inches (default 10).
  type: string
  inputBinding:
    prefix: --width
- id: height
  doc: (Optional) Image file height in inches (default 3).
  type: string
  inputBinding:
    prefix: --height
- id: dpi
  doc: (Optional) Dots per inch.
  type: string
  inputBinding:
    prefix: --dpi
- id: font_size
  doc: (Optional) Fontsize (default 12).
  type: string
  inputBinding:
    prefix: --fontsize
- id: wt
  doc: (Optional) Include this to plot wild-type architechtures of the 5' and 3' genes
  type: boolean
  inputBinding:
    prefix: --WT
- id: middle_star
  doc: (Optional) Insert a * at the junction position for the cdna, cds, and protein
    sequences (default False).
  type: boolean
  inputBinding:
    prefix: --middlestar
- id: no_domain_labels
  doc: (Optional) Do not label domains.
  type: boolean
  inputBinding:
    prefix: --no_domain_labels
- id: debug
  doc: (Optional) Enable debugging logging.
  type: boolean
  inputBinding:
    prefix: --debug
outputs: []
cwlVersion: v1.1
baseCommand:
- agfusion
- batch
