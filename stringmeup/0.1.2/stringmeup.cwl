class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/stringmeup.cwl
inputs:
- id: output_report
  doc: File to save the Kraken 2 report in.
  type: File
  inputBinding:
    prefix: --output_report
- id: output_classifications
  doc: File to save the Kraken 2 read classifications in.
  type: File
  inputBinding:
    prefix: --output_classifications
- id: keep_unclassified
  doc: 'Specify if you want to output unclassified reads in addition to classified
    reads. NOTE(!): This script will always discard reads that are unclassified in
    the classifications input file, this flag will just make sure to keep previously
    classified reads even if they are reclassified as unclassified by this script.
    TIP(!): Always run Kraken2 with no confidence cutoff.'
  type: boolean
  inputBinding:
    prefix: --keep_unclassified
- id: output_verbose
  doc: File to send verbose output to. This file will contain, for each read, (1)
    original classification, (2) new classification, (3) original confidence, (4),
    new confidence (5), original taxa name (6), new taxa name, (7) original rank,
    (8) new rank, (9) distance travelled (how many nodes was it lifted upwards in
    the taxonomy).
  type: File
  inputBinding:
    prefix: --output_verbose
- id: names
  doc: taxonomy names dump file (names.dmp)
  type: File
  inputBinding:
    prefix: --names
- id: taxonomy_file
  doc: Path to a pickle file containing a taxonomy tree created through the TaxonomyTree.save_taxonomy
    function (taxonomy.py).
  type: File
  inputBinding:
    prefix: --taxonomy_file
- id: nodes
  doc: taxonomy nodes dump file (nodes.dmp)
  type: File
  inputBinding:
    prefix: --nodes
- id: minimum_hit_groups
  doc: 'The minimum number of hit groups a read needs to be classified. NOTE: You
    need to supply a classifications file (kraken2 output) that contain the "minimizer_hit_groups"
    column.'
  type: long
  inputBinding:
    prefix: --minimum_hit_groups
- id: gz_output
  doc: Set this flag to output <output_classifications> and <output_verbose> in gzipped
    format (will add .gz extension to the filenames).
  type: boolean
  inputBinding:
    prefix: --gz_output
outputs: []
cwlVersion: v1.1
baseCommand:
- stringmeup
