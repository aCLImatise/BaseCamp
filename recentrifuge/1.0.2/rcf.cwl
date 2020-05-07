class: CommandLineTool
id: rcf.cwl
inputs:
- id: nodes_path
  doc: path for the nodes information files (nodes.dmp and names.dmp from NCBI)
  type: File
  inputBinding:
    prefix: --nodespath
- id: format
  doc: Format of the output files from a generic classifier included with the option
    -g. It is a string like "TYP:csv,TID:1,LEN:3,SCO:6,UNC:0" where valid file TYPes
    are csv/tsv/ssv, and the rest of fields indicate the number of column used (starting
    in 1) for the TaxIDs assigned, the LENgth of the read, the SCOre given to the
    assignment, and the taxid code used for UNClassified reads
  type: string
  inputBinding:
    prefix: --format
- id: file
  doc: Centrifuge output files. If a single directory is entered, every .out file
    inside will be taken as a different sample. Multiple -f is available to include
    several Centrifuge samples.
  type: File
  inputBinding:
    prefix: --file
- id: generic
  doc: Output file from a generic classifier. It requires the flag --format (see such
    option for details). Multiple -g is available to include several generic samples.
  type: File
  inputBinding:
    prefix: --generic
- id: lm_at
  doc: LMAT output dir or file prefix. If just "." is entered, every subdirectory
    under the current directory will be taken as a sample and scanned looking for
    LMAT output files. Multiple -l is available to include several samples.
  type: File
  inputBinding:
    prefix: --lmat
- id: clark
  doc: CLARK full-mode output files. If a single directory is entered, every .csv
    file inside will be taken as a different sample. Multiple -r is available to include
    several CLARK, CLARK-l, and CLARK-S full-mode samples.
  type: File
  inputBinding:
    prefix: --clark
- id: kraken
  doc: Kraken output files. If a single directory is entered, every .krk file inside
    will be taken as a different sample. Multiple -k is available to include several
    Kraken (version 1 or 2) samples.
  type: File
  inputBinding:
    prefix: --kraken
- id: out_html
  doc: HTML output file (if not given, the filename will be inferred from input files)
  type: File
  inputBinding:
    prefix: --outhtml
- id: extra
  doc: type of extra output to be generated, and can be one of ['FULL', 'CMPLXCRUNCHER',
    'CSV', 'TSV']
  type: string
  inputBinding:
    prefix: --extra
- id: controls
  doc: this number of first samples will be treated as negative controls; default
    is no controls
  type: string
  inputBinding:
    prefix: --controls
- id: scoring
  doc: type of scoring to be applied, and can be one of ['SHEL', 'LENGTH', 'LOGLENGTH',
    'NORMA', 'LMAT', 'CLARK_C', 'CLARK_G', 'KRAKEN', 'GENERIC']
  type: string
  inputBinding:
    prefix: --scoring
- id: min_score
  doc: minimum score/confidence of the classification of a read to pass the quality
    filter; all pass by default
  type: string
  inputBinding:
    prefix: --minscore
- id: min_tax_a
  doc: minimum taxa to avoid collapsing one level into the parent (if not specified
    a value will be automatically assigned)
  type: long
  inputBinding:
    prefix: --mintaxa
- id: exclude
  doc: NCBI taxid code to exclude a taxon and all underneath (multiple -x is available
    to exclude several taxid)
  type: string
  inputBinding:
    prefix: --exclude
- id: include
  doc: NCBI taxid code to include a taxon and all underneath (multiple -i is available
    to include several taxid); by default, all the taxa are considered for inclusion
  type: string
  inputBinding:
    prefix: --include
- id: avoid_cross
  doc: avoid cross analysis
  type: boolean
  inputBinding:
    prefix: --avoidcross
- id: ctrl_min_score
  doc: minimum score/confidence of the classification of a read in control samples
    to pass the quality filter; it defaults to "minscore"
  type: string
  inputBinding:
    prefix: --ctrlminscore
- id: ctrl_min_tax_a
  doc: minimum taxa to avoid collapsing one level into the parent (if not specified
    a value will be automatically assigned)
  type: long
  inputBinding:
    prefix: --ctrlmintaxa
- id: summary
  doc: select to "add" summary samples to other samples, or to "only" show summary
    samples or to "avoid" summaries at all
  type: string
  inputBinding:
    prefix: --summary
- id: take_out_root
  doc: remove counts directly assigned to the "root" level
  type: boolean
  inputBinding:
    prefix: --takeoutroot
- id: no_kol_lapse
  doc: show the "cellular organisms" taxon
  type: boolean
  inputBinding:
    prefix: --nokollapse
- id: debug
  doc: increase output verbosity and perform additional checks
  type: boolean
  inputBinding:
    prefix: --debug
- id: sequential
  doc: deactivate parallel processing
  type: boolean
  inputBinding:
    prefix: --sequential
outputs: []
cwlVersion: v1.1
baseCommand:
- rcf
