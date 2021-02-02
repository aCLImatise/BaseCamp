class: CommandLineTool
id: ../../../stringmeup.cwl
inputs:
- id: in_output_report
  doc: File to save the Kraken 2 report in.
  type: File
  inputBinding:
    prefix: --output_report
- id: in_output_classifications
  doc: File to save the Kraken 2 read classifications in.
  type: File
  inputBinding:
    prefix: --output_classifications
- id: in_keep_unclassified
  doc: "Specify if you want to output unclassified reads in\naddition to classified\
    \ reads. NOTE(!): This script\nwill always discard reads that are unclassified\
    \ in the\nclassifications input file, this flag will just make\nsure to keep previously\
    \ classified reads even if they\nare reclassified as unclassified by this script.\n\
    TIP(!): Always run Kraken2 with no confidence cutoff."
  type: boolean
  inputBinding:
    prefix: --keep_unclassified
- id: in_output_verbose
  doc: "File to send verbose output to. This file will\ncontain, for each read, (1)\
    \ original classification,\n(2) new classification, (3) original confidence, (4),\n\
    new confidence (5), original taxa name (6), new taxa\nname, (7) original rank,\
    \ (8) new rank, (9) distance\ntravelled (how many nodes was it lifted upwards\
    \ in the\ntaxonomy)."
  type: File
  inputBinding:
    prefix: --output_verbose
- id: in_names
  doc: taxonomy names dump file (names.dmp)
  type: File
  inputBinding:
    prefix: --names
- id: in_taxonomy_file
  doc: "Path to a pickle file containing a taxonomy tree\ncreated through the TaxonomyTree.save_taxonomy\n\
    function (taxonomy.py)."
  type: File
  inputBinding:
    prefix: --taxonomy_file
- id: in_nodes
  doc: taxonomy nodes dump file (nodes.dmp)
  type: File
  inputBinding:
    prefix: --nodes
- id: in_minimum_hit_groups
  doc: "The minimum number of hit groups a read needs to be\nclassified. NOTE: You\
    \ need to supply a classifications\nfile (kraken2 output) that contain the\n\"\
    minimizer_hit_groups\" column."
  type: long
  inputBinding:
    prefix: --minimum_hit_groups
- id: in_gz_output
  doc: "Set this flag to output <output_classifications> and\n<output_verbose> in\
    \ gzipped format (will add .gz\nextension to the filenames).\n"
  type: boolean
  inputBinding:
    prefix: --gz_output
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_verbose
  doc: "File to send verbose output to. This file will\ncontain, for each read, (1)\
    \ original classification,\n(2) new classification, (3) original confidence, (4),\n\
    new confidence (5), original taxa name (6), new taxa\nname, (7) original rank,\
    \ (8) new rank, (9) distance\ntravelled (how many nodes was it lifted upwards\
    \ in the\ntaxonomy)."
  type: File
  outputBinding:
    glob: $(inputs.in_output_verbose)
cwlVersion: v1.1
baseCommand:
- stringmeup
