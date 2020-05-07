class: CommandLineTool
id: gappa_examine_assign.cwl
inputs:
- id: options
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: j_place_path
  doc: :PATH(existing)=[] ... REQUIRED List of jplace files or directories to process.
    For directories, only files with the extension .jplace are processed.
  type: string
  inputBinding:
    prefix: --jplace-path
- id: tax_on_file
  doc: :FILE REQUIRED File containing a tab-separated list of reference taxon to taxonomic
    string assignments.
  type: string
  inputBinding:
    prefix: --taxon-file
- id: root_out_group
  doc: :FILE   Root the tree by the outgroup taxa defined in the specified file.
  type: string
  inputBinding:
    prefix: --root-outgroup
- id: taxonomy
  doc: ':FILE        EXPERIMENTAL: File containing a tab-separated list defining the
    taxonomy. If mapping is incomplete (for example if the output taxonomy shall be
    NCBI, but SILVA was used as the basis in the --taxon-file) a best-effort mapping
    is attempted.'
  type: string
  inputBinding:
    prefix: --taxonomy
- id: ranks_string
  doc: '=superkingdom|phylum|class|order|family|genus|species String specifying the
    rank names, in order, to which the taxonomy adheres. Required when using the CAMI
    output format. Assignments not adhereing to this constrained will be collapsed
    to the last valid mapping EXAMPLE: superkingdom|phylum|class|order|family|genus|species'
  type: string
  inputBinding:
    prefix: --ranks-string
- id: sub_tax_o_path
  doc: "Taxopath (example: Eukaryota;Animalia;Chordata) by which the high level summary\
    \ should be filtered. Doesn't affect intermediate results, and an unfiltered verison\
    \ will be printed as well."
  type: string
  inputBinding:
    prefix: --sub-taxopath
- id: max_level
  doc: =0          Maximal level of the taxonomy to be printed. Default is 0, that
    is, the whole taxonomy is printed. If set to a value about 0, only this many levels
    are printed. That is, taxonomic levels below the specified one are omitted.
  type: string
  inputBinding:
    prefix: --max-level
- id: distribution_ratio
  doc: :FLOAT in [0 - 1]=-1 Ratio by which LWR is split between annotations if an
    edge has two possible annotations. Specifies the amount going to the proximal
    annotation. If not set program will determine the ratio automatically from the
    'distal length' specified per placement.
  type: double
  inputBinding:
    prefix: --distribution-ratio
- id: resolve_missing_paths
  doc: Should the taxon file be incomplete and leave some taxa without taxopaths,
    fill in the missing node labels using the closest (in the tree) label. If not
    specified, those parts of the tree remain unlabeled, and their placements unassigned.
  type: boolean
  inputBinding:
    prefix: --resolve-missing-paths
- id: out_dir
  doc: =.            Directory to write files to
  type: string
  inputBinding:
    prefix: --out-dir
- id: cami
  doc: ': --taxonomy    EXPERIMENTAL: Print result in the CAMI Taxonomic Profiling
    Output Format.'
  type: string
  inputBinding:
    prefix: --cami
- id: sample_id
  doc: 'Needs: --cami Sample-ID string to be used in the CAMI output file'
  type: string
  inputBinding:
    prefix: --sample-id
- id: krona
  doc: Print result in the Krona text format.
  type: boolean
  inputBinding:
    prefix: --krona
- id: sativa
  doc: Print result as SATIVA would.
  type: boolean
  inputBinding:
    prefix: --sativa
- id: best_hit
  doc: In the intermediate results, only print the taxonomic path with the highest
    LWR.
  type: boolean
  inputBinding:
    prefix: --best-hit
- id: allow_file_overwriting
  doc: Allow to overwrite existing output files instead of aborting the command.
  type: boolean
  inputBinding:
    prefix: --allow-file-overwriting
- id: verbose
  doc: Produce more verbose output.
  type: boolean
  inputBinding:
    prefix: --verbose
- id: threads
  doc: =8            Number of threads to use for calculations.
  type: string
  inputBinding:
    prefix: --threads
- id: log_file
  doc: Write all output to a log file, in addition to standard output to the terminal.
  type: string
  inputBinding:
    prefix: --log-file
outputs: []
cwlVersion: v1.1
baseCommand:
- gappa
- examine
- assign
