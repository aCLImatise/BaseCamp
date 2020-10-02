class: CommandLineTool
id: anvi_display_structure.cwl
inputs:
- id: in_profile_db
  doc: Anvi'o profile database
  type: string
  inputBinding:
    prefix: --profile-db
- id: in_contigs_db
  doc: "Anvi'o contigs database generated by 'anvi-gen-\ncontigs'"
  type: string
  inputBinding:
    prefix: --contigs-db
- id: in_variability_profile
  doc: "The output of anvi-gen-variability-profile, or a\ndifferent variant-calling\
    \ output that has been\nconverted to the anvi'o format."
  type: string
  inputBinding:
    prefix: --variability-profile
- id: in_splits_of_interest
  doc: "A file with split names. There should be only one\ncolumn in the file, and\
    \ each line should correspond to\na unique split name."
  type: File
  inputBinding:
    prefix: --splits-of-interest
- id: in_collection_name
  doc: Collection name.
  type: string
  inputBinding:
    prefix: --collection-name
- id: in_bin_id
  doc: "If provided, any genes found in both your bin and your\nstructure database\
    \ will be available for display."
  type: string
  inputBinding:
    prefix: --bin-id
- id: in_samples_of_interest
  doc: "A file with samples names. There should be only one\ncolumn in the file, and\
    \ each line should correspond to\na unique sample name (without a column header)."
  type: File
  inputBinding:
    prefix: --samples-of-interest
- id: in_genes_of_interest
  doc: "A file with anvi'o gene caller IDs. There should be\nonly one column in the\
    \ file, and each line should\ncorrespond to a unique gene caller id (without a\n\
    column header)."
  type: File
  inputBinding:
    prefix: --genes-of-interest
- id: in_gene_caller_ids
  doc: "Gene caller ids. Multiple of them can be declared\nseparated by a delimiter\
    \ (the default is a comma). In\nanvi-gen-variability-profile, if you declare nothing\n\
    you will get all genes matching your other filtering\ncriteria. In other programs,\
    \ you may get everything,\nnothing, or an error. It really depends on the\nsituation.\
    \ Fortunately, mistakes are cheap, so it's\nworth a try."
  type: string
  inputBinding:
    prefix: --gene-caller-ids
- id: in_min_departure_from_consensus
  doc: "Takes a value between 0 and 1, where 1 is maximum\ndivergence from the consensus.\
    \ it can be an expensive\noperation to display every variable position, and so\n\
    the default is 0.05. To display every variable\nposition, set this parameter to\
    \ 0"
  type: double
  inputBinding:
    prefix: --min-departure-from-consensus
- id: in_sa_avs_only
  doc: "If provided, variability will be generated for single\namino acid variants\
    \ (SAAVs) and not for single codon\nvariants (SCVs). This could save you some\
    \ time if\nyou're only interested in SAAVs."
  type: boolean
  inputBinding:
    prefix: --SAAVs-only
- id: in_s_cvs_only
  doc: "If provided, variability will be generated for single\ncodon variants (SCVs)\
    \ and not for single amino acid\nvariants (SAAVs). This could save you some time\
    \ if\nyou're only interested in SCVs."
  type: boolean
  inputBinding:
    prefix: --SCVs-only
- id: in_ip_address
  doc: "IP address for the HTTP server. The default ip address\n(0.0.0.0) should work\
    \ just fine for most."
  type: double
  inputBinding:
    prefix: --ip-address
- id: in_port_number
  doc: "Port number to use for anvi'o services. If nothing is\ndeclared, anvi'o will\
    \ try to find a suitable port\nnumber, starting from the default port number,\
    \ 8080."
  type: long
  inputBinding:
    prefix: --port-number
- id: in_browser_path
  doc: "By default, anvi'o will use your default browser to\nlaunch the interactive\
    \ interface. If you would like to\nuse something else than your system default,\
    \ you can\nprovide a full path for an alternative browser using\nthis parameter,\
    \ and hope for the best. For instance we\nare using this parameter to call Google's\
    \ experimental\nbrowser, Canary, which performs better with demanding\nvisualizations."
  type: File
  inputBinding:
    prefix: --browser-path
- id: in_server_only
  doc: "The default behavior is to start the local server, and\nfire up a browser\
    \ that connects to the server. If you\nhave other plans, and want to start the\
    \ server without\ncalling the browser, this is the flag you need."
  type: boolean
  inputBinding:
    prefix: --server-only
- id: in_password_protected
  doc: "If this flag is set, command line tool will ask you to\nenter a password and\
    \ interactive interface will be\nonly accessible after entering same password.\
    \ This\noption is recommended for shared machines like\nclusters or shared networks\
    \ where computers are not\nisolated.\n"
  type: boolean
  inputBinding:
    prefix: --password-protected
- id: in_s
  doc: ''
  type: string
  inputBinding:
    prefix: -s
- id: in_an_vi_gen_structure_database_dot
  doc: "-s STRUCTURE_DB, --structure-db STRUCTURE_DB\nAnvi'o structure database."
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- anvi-display-structure
