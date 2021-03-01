class: CommandLineTool
id: gappa_examine_assign.cwl
inputs:
- id: in_j_place_path
  doc: ":PATH(existing)=[] ... REQUIRED\nList of jplace files or directories to process.\
    \ For directories, only files with the extension `.jplace[.gz]` are processed."
  type: File?
  inputBinding:
    prefix: --jplace-path
- id: in_tax_on_file
  doc: ":FILE REQUIRED\nFile containing a tab-separated list of reference taxon to\
    \ taxonomic string assignments."
  type: File?
  inputBinding:
    prefix: --taxon-file
- id: in_root_out_group
  doc: :FILE   Root the tree by the outgroup taxa defined in the specified file.
  type: File?
  inputBinding:
    prefix: --root-outgroup
- id: in_taxonomy
  doc: ':FILE        EXPERIMENTAL: File containing a tab-separated list defining the
    taxonomy. If mapping is incomplete (for example if the output taxonomy shall be
    NCBI, but SILVA was used as the basis in the --taxon-file) a best-effort mapping
    is attempted.'
  type: File?
  inputBinding:
    prefix: --taxonomy
- id: in_ranks_string
  doc: "=superkingdom|phylum|class|order|family|genus|species\nString specifying the\
    \ rank names, in order, to which the taxonomy adheres. Required when using the\
    \ CAMI output format. Assignments not adhereing to this constrained will be collapsed\
    \ to the last valid mapping\nEXAMPLE: superkingdom|phylum|class|order|family|genus|species"
  type: string?
  inputBinding:
    prefix: --ranks-string
- id: in_sub_tax_o_path
  doc: "Taxopath (example: Eukaryota;Animalia;Chordata) by which the high level summary\
    \ should be filtered. Doesn't affect intermediate results, and an unfiltered verison\
    \ will be printed as well."
  type: string?
  inputBinding:
    prefix: --sub-taxopath
- id: in_max_level
  doc: =0          Maximal level of the taxonomy to be printed. Default is 0, that
    is, the whole taxonomy is printed. If set to a value about 0, only this many levels
    are printed. That is, taxonomic levels below the specified one are omitted.
  type: long?
  inputBinding:
    prefix: --max-level
- id: in_distribution_ratio
  doc: ":FLOAT in [0 - 1]=-1\nRatio by which LWR is split between annotations if an\
    \ edge has two possible annotations. Specifies the amount going to the proximal\
    \ annotation. If not set program will determine the ratio automatically from the\
    \ 'distal length' specified per placement."
  type: double?
  inputBinding:
    prefix: --distribution-ratio
- id: in_consensus_thresh
  doc: ":FLOAT in [0 - 1]=1\nFor assignment of taxonomic labels to the reference tree,\
    \ require this consensus threshold. Example: if set to 0.6, and 60% of an inner\
    \ node's descendants share a taxonomic path, set that path at the inner node."
  type: double?
  inputBinding:
    prefix: --consensus-thresh
- id: in_resolve_missing_paths
  doc: "Should the taxon file be incomplete and leave some taxa without taxopaths,\
    \ fill in the missing node labels using the closest (in the tree) label.\nIf not\
    \ specified, those parts of the tree remain unlabelled, and their placements unassigned."
  type: boolean?
  inputBinding:
    prefix: --resolve-missing-paths
- id: in_out_dir
  doc: =.            Directory to write files to
  type: Directory?
  inputBinding:
    prefix: --out-dir
- id: in_file_prefix
  doc: File prefix for output files
  type: File?
  inputBinding:
    prefix: --file-prefix
- id: in_file_suffix
  doc: File suffix for output files
  type: File?
  inputBinding:
    prefix: --file-suffix
- id: in_cami
  doc: ': --taxonomy    EXPERIMENTAL: Print result in the CAMI Taxonomic Profiling
    Output Format.'
  type: string?
  inputBinding:
    prefix: --cami
- id: in_sample_id
  doc: "Needs: --cami\nSample-ID string to be used in the CAMI output file"
  type: File?
  inputBinding:
    prefix: --sample-id
- id: in_krona
  doc: Print result in the Krona text format.
  type: boolean?
  inputBinding:
    prefix: --krona
- id: in_sativa
  doc: Print result as SATIVA would.
  type: boolean?
  inputBinding:
    prefix: --sativa
- id: in_per_query_results
  doc: Print intermediate / per-query results (per_query.tsv).
  type: boolean?
  inputBinding:
    prefix: --per-query-results
- id: in_best_hit
  doc: In the per-query results, only print the taxonomic path with the highest LWR.
  type: boolean?
  inputBinding:
    prefix: --best-hit
- id: in_allow_file_overwriting
  doc: Allow to overwrite existing output files instead of aborting the command.
  type: boolean?
  inputBinding:
    prefix: --allow-file-overwriting
- id: in_verbose
  doc: Produce more verbose output.
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_threads
  doc: =8            Number of threads to use for calculations.
  type: long?
  inputBinding:
    prefix: --threads
- id: in_log_file
  doc: Write all output to a log file, in addition to standard output to the terminal.
  type: File?
  inputBinding:
    prefix: --log-file
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_taxonomy
  doc: ':FILE        EXPERIMENTAL: File containing a tab-separated list defining the
    taxonomy. If mapping is incomplete (for example if the output taxonomy shall be
    NCBI, but SILVA was used as the basis in the --taxon-file) a best-effort mapping
    is attempted.'
  type: File?
  outputBinding:
    glob: $(inputs.in_taxonomy)
- id: out_file_prefix
  doc: File prefix for output files
  type: File?
  outputBinding:
    glob: $(inputs.in_file_prefix)
- id: out_file_suffix
  doc: File suffix for output files
  type: File?
  outputBinding:
    glob: $(inputs.in_file_suffix)
- id: out_sample_id
  doc: "Needs: --cami\nSample-ID string to be used in the CAMI output file"
  type: File?
  outputBinding:
    glob: $(inputs.in_sample_id)
- id: out_log_file
  doc: Write all output to a log file, in addition to standard output to the terminal.
  type: File?
  outputBinding:
    glob: $(inputs.in_log_file)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/gappa:0.7.0--he513fc3_0
cwlVersion: v1.1
baseCommand:
- gappa
- examine
- assign
