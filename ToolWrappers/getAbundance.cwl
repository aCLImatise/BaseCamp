class: CommandLineTool
id: getAbundance.cwl
inputs:
- id: in_filter_assignments_based
  doc: "To filter assignments based on their gamma score (if available) using the\n\
    threshold value minGamma (a value between 0 and 1.0).\nThe abundance estimation\
    \ for each target will count only\nassignments with a gamma score higher than\
    \ minGamma.\nAssignments that have a gamma score lower than minGamma\nwill be\
    \ marked as unclassified and so counted in the\ncategory UNKNOWN in the abundance\
    \ estimation report.\nThe default value is 0."
  type: double
  inputBinding:
    prefix: -g
- id: in_directory_path_same
  doc: "The directory path of the database (the same you indicated when calling set_targets.sh).\n\
    This parameter is required to load scientific names of all targets ONLY if you\
    \ pass\nresults of a metagenomic sample."
  type: File
  inputBinding:
    prefix: -D
- id: in_resultcsv_resultncsvresults_file
  doc: ".csv <result2>.csv ... <result_n>.csv\nresults file or list of results file\
    \ produced by CLARK.\nImportant Note: You can pass a results file produced by\
    \ any mode of execution of CLARK\n(full, express, spectrum, default), but if you\
    \ pass several files, make sure they all have\nbeen produced by the same mode.\
    \ For example, if you pass result1.csv and result2.csv\nthen result1.csv and result2.csv\
    \ should be produced through the same mode (e.g., full mode)."
  type: long
  inputBinding:
    prefix: -F
- id: in_minabundance_output_estimations
  doc: "<minAbundance(%)>                     To output only estimations that are\
    \ higher than a certain threshold, minAbundance.\nminAbundance is a percentage\
    \ value (between 0 and 100)."
  type: boolean
  inputBinding:
    prefix: -a
- id: in_high_confidence
  doc: "To count only high confidence assignments for the abundance estimation.\n\
    This option is equivalent to '-c 0.75 -g 0.03', in this version."
  type: boolean
  inputBinding:
    prefix: --highconfidence
- id: in_krona
  doc: "To export results in a 3-column file (i.e., taxon_id,taxon_id,magnitude) for\n\
    the Krona tool (Hierarchical data browser, Ondov et al, BMC Bioinformatics, 2011,\n\
    doi: 10.1186/1471-2105-12-385. https://github.com/marbl/Krona/wiki).\nWith this\
    \ option on, the program will create the file 'results.krn' containing\nthe unnormalized\
    \ abundance from CLARK's assignments (with the filtering options if any).\nThen,\
    \ to create the Krona diagram, run ktImportTaxonomy with the option '-m 3', for\
    \ example:\n$ ktImportTaxonomy-o results.html -m 3 results.krn"
  type: boolean
  inputBinding:
    prefix: --krona
- id: in_mpa
  doc: "To export results in the MetaPhlan's mpa format. A two-column file, where\
    \ the first column,\nis the taxonomy rank and the second column is the total number\
    \ of reads mapped to that rank or below.\n"
  type: boolean
  inputBinding:
    prefix: --mpa
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- getAbundance
