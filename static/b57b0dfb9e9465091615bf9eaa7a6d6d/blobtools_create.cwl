class: CommandLineTool
id: blobtools_create.cwl
inputs:
- id: in_in_file
  doc: FASTA file of assembly. Headers are split at whitespaces.
  type: File?
  inputBinding:
    prefix: --infile
- id: in_type
  doc: "Assembly program used to create FASTA. If specified,\ncoverage will be parsed\
    \ from FASTA header.\n(Parsing supported for 'spades', 'velvet', 'platanus')"
  type: string?
  inputBinding:
    prefix: --type
- id: in_hits_file
  doc: "Hits file in format (qseqid\\ttaxid\\tbitscore)\n(e.g. BLAST output \"--outfmt\
    \ '6 qseqid staxids bitscore'\")\nCan be specified multiple times"
  type: File?
  inputBinding:
    prefix: --hitsfile
- id: in_tax_rule
  doc: "...      Taxrule determines how taxonomy of blobs\nis computed (by default\
    \ both are calculated)\n\"bestsum\"       : sum bitscore across all\nhits for\
    \ each taxonomic rank\n\"bestsumorder\"  : sum bitscore across all\nhits for each\
    \ taxonomic rank.\n- If first <TAX> file supplies hits, bestsum is calculated.\n\
    - If no hit is found, the next <TAX> file is used."
  type: File?
  inputBinding:
    prefix: --taxrule
- id: in_min_score
  doc: "Minimal score necessary to be considered for taxonomy calculaton, otherwise\
    \ set to 'no-hit'\n[default: 0.0]"
  type: double?
  inputBinding:
    prefix: --min_score
- id: in_min_diff
  doc: "Minimal score difference between highest scoring\ntaxonomies (otherwise \"\
    unresolved\") [default: 0.0]"
  type: double?
  inputBinding:
    prefix: --min_diff
- id: in_tax_collision_random
  doc: "Random allocation of taxonomy if highest scoring\ntaxonomies have equal scores\
    \ (otherwise \"unresolved\") [default: False]"
  type: boolean?
  inputBinding:
    prefix: --tax_collision_random
- id: in_nodes
  doc: NCBI nodes.dmp file. Not required if '--db'
  type: File?
  inputBinding:
    prefix: --nodes
- id: in_names
  doc: NCBI names.dmp file. Not required if '--db'
  type: File?
  inputBinding:
    prefix: --names
- id: in_db
  doc: "NodesDB file (default: $BLOBTOOLS/data/nodesDB.txt).  If --nodes, --names\
    \ and --db\nare all given and NODESDB does not exist, create it from NODES and\
    \ NAMES."
  type: File?
  inputBinding:
    prefix: --db
- id: in_bam
  doc: '...              BAM file(s), can be specified multiple times'
  type: File?
  inputBinding:
    prefix: --bam
- id: in_cas
  doc: '...              CAS file(s) (requires clc_mapping_info in $PATH), can be
    specified multiple times'
  type: File?
  inputBinding:
    prefix: --cas
- id: in_cov
  doc: '...              COV file(s), can be specified multiple times'
  type: File?
  inputBinding:
    prefix: --cov
- id: in_calculate_cov
  doc: "Legacy coverage when getting coverage from BAM (does not apply to COV parsing).\n\
    New default is to estimate coverages which is faster,"
  type: boolean?
  inputBinding:
    prefix: --calculate_cov
- id: in_out
  doc: BlobDB output prefix
  type: string?
  inputBinding:
    prefix: --out
- id: in_title
  doc: 'Title of BlobDB [default: output prefix)'
  type: string?
  inputBinding:
    prefix: --title
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_hits_file
  doc: "Hits file in format (qseqid\\ttaxid\\tbitscore)\n(e.g. BLAST output \"--outfmt\
    \ '6 qseqid staxids bitscore'\")\nCan be specified multiple times"
  type: File?
  outputBinding:
    glob: $(inputs.in_hits_file)
hints: []
cwlVersion: v1.1
baseCommand:
- blobtools
- create
