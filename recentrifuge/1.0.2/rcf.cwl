#!/usr/bin/env cwl-runner

baseCommand:
- rcf
class: CommandLineTool
cwlVersion: v1.0
id: rcf
inputs:
- doc: path for the nodes information files (nodes.dmp and names.dmp from NCBI)
  id: nodes_path
  inputBinding:
    prefix: --nodespath
  type: File
- doc: Format of the output files from a generic classifier included with the option
    -g. It is a string like "TYP:csv,TID:1,LEN:3,SCO:6,UNC:0" where valid file TYPes
    are csv/tsv/ssv, and the rest of fields indicate the number of column used (starting
    in 1) for the TaxIDs assigned, the LENgth of the read, the SCOre given to the
    assignment, and the taxid code used for UNClassified reads
  id: format
  inputBinding:
    prefix: --format
  type: string
- doc: Centrifuge output files. If a single directory is entered, every .out file
    inside will be taken as a different sample. Multiple -f is available to include
    several Centrifuge samples.
  id: file
  inputBinding:
    prefix: --file
  type: File
- doc: Output file from a generic classifier. It requires the flag --format (see such
    option for details). Multiple -g is available to include several generic samples.
  id: generic
  inputBinding:
    prefix: --generic
  type: File
- doc: LMAT output dir or file prefix. If just "." is entered, every subdirectory
    under the current directory will be taken as a sample and scanned looking for
    LMAT output files. Multiple -l is available to include several samples.
  id: lm_at
  inputBinding:
    prefix: --lmat
  type: File
- doc: CLARK full-mode output files. If a single directory is entered, every .csv
    file inside will be taken as a different sample. Multiple -r is available to include
    several CLARK, CLARK-l, and CLARK-S full-mode samples.
  id: clark
  inputBinding:
    prefix: --clark
  type: File
- doc: Kraken output files. If a single directory is entered, every .krk file inside
    will be taken as a different sample. Multiple -k is available to include several
    Kraken (version 1 or 2) samples.
  id: kraken
  inputBinding:
    prefix: --kraken
  type: File
- doc: HTML output file (if not given, the filename will be inferred from input files)
  id: out_html
  inputBinding:
    prefix: --outhtml
  type: File
- doc: type of extra output to be generated, and can be one of ['FULL', 'CMPLXCRUNCHER',
    'CSV', 'TSV']
  id: extra
  inputBinding:
    prefix: --extra
  type: string
- doc: this number of first samples will be treated as negative controls; default
    is no controls
  id: controls
  inputBinding:
    prefix: --controls
  type: string
- doc: type of scoring to be applied, and can be one of ['SHEL', 'LENGTH', 'LOGLENGTH',
    'NORMA', 'LMAT', 'CLARK_C', 'CLARK_G', 'KRAKEN', 'GENERIC']
  id: scoring
  inputBinding:
    prefix: --scoring
  type: string
- doc: minimum score/confidence of the classification of a read to pass the quality
    filter; all pass by default
  id: min_score
  inputBinding:
    prefix: --minscore
  type: string
- doc: minimum taxa to avoid collapsing one level into the parent (if not specified
    a value will be automatically assigned)
  id: min_tax_a
  inputBinding:
    prefix: --mintaxa
  type: long
- doc: NCBI taxid code to exclude a taxon and all underneath (multiple -x is available
    to exclude several taxid)
  id: exclude
  inputBinding:
    prefix: --exclude
  type: string
- doc: NCBI taxid code to include a taxon and all underneath (multiple -i is available
    to include several taxid); by default, all the taxa are considered for inclusion
  id: include
  inputBinding:
    prefix: --include
  type: string
- doc: avoid cross analysis
  id: avoid_cross
  inputBinding:
    prefix: --avoidcross
  type: boolean
- doc: minimum score/confidence of the classification of a read in control samples
    to pass the quality filter; it defaults to "minscore"
  id: ctrl_min_score
  inputBinding:
    prefix: --ctrlminscore
  type: string
- doc: minimum taxa to avoid collapsing one level into the parent (if not specified
    a value will be automatically assigned)
  id: ctrl_min_tax_a
  inputBinding:
    prefix: --ctrlmintaxa
  type: long
- doc: select to "add" summary samples to other samples, or to "only" show summary
    samples or to "avoid" summaries at all
  id: summary
  inputBinding:
    prefix: --summary
  type: string
- doc: remove counts directly assigned to the "root" level
  id: take_out_root
  inputBinding:
    prefix: --takeoutroot
  type: boolean
- doc: show the "cellular organisms" taxon
  id: no_kol_lapse
  inputBinding:
    prefix: --nokollapse
  type: boolean
- doc: increase output verbosity and perform additional checks
  id: debug
  inputBinding:
    prefix: --debug
  type: boolean
- doc: deactivate parallel processing
  id: sequential
  inputBinding:
    prefix: --sequential
  type: boolean
