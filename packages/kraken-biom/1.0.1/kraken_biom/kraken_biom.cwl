class: CommandLineTool
id: kraken_biom.cwl
inputs:
- id: in_max
  doc: "Assigned reads will be recorded only if they are at or\nbelow max rank. Default:\
    \ O."
  type: string
  inputBinding:
    prefix: --max
- id: in_min
  doc: "Reads assigned at and below min rank will be recorded\nas being assigned to\
    \ the min rank level. Default: S."
  type: string
  inputBinding:
    prefix: --min
- id: in_output_fp
  doc: "Path to the BIOM-format file. By default, the table\nwill be in the HDF5 BIOM\
    \ 2.x format. Users can output\nto a different format using the --fmt option.\
    \ The\noutput can also be gzipped using the --gzip option.\nDefault path is: ./table.biom"
  type: File
  inputBinding:
    prefix: --output_fp
- id: in_otu_fp
  doc: "Create a file containing just the (NCBI) OTU IDs for\nuse with a service such\
    \ as phyloT\n(http://phylot.biobyte.de/) to generate a phylogenetic\ntree for\
    \ use in downstream analysis such as UniFrac,\niTol (itol.embl.de), or PhyloToAST\
    \ (phylotoast.org)."
  type: File
  inputBinding:
    prefix: --otu_fp
- id: in_fmt
  doc: "Set the output format of the BIOM table. Default is\nHDF5."
  type: string
  inputBinding:
    prefix: --fmt
- id: in_gzip
  doc: "Compress the output BIOM table with gzip. HDF5 BIOM\n(v2.x) files are internally\
    \ compressed by default, so\nthis option is not needed when specifying --fmt hdf5."
  type: boolean
  inputBinding:
    prefix: --gzip
- id: in_verbose
  doc: Prints status messages during program execution.
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_kraken_reports
  doc: Results files from the kraken-report tool.
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_fp
  doc: "Path to the BIOM-format file. By default, the table\nwill be in the HDF5 BIOM\
    \ 2.x format. Users can output\nto a different format using the --fmt option.\
    \ The\noutput can also be gzipped using the --gzip option.\nDefault path is: ./table.biom"
  type: File
  outputBinding:
    glob: $(inputs.in_output_fp)
cwlVersion: v1.1
baseCommand:
- kraken-biom
