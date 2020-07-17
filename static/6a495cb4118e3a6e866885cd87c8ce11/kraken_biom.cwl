class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/kraken_biom.cwl
inputs:
- id: max
  doc: 'Assigned reads will be recorded only if they are at or below max rank. Default:
    O.'
  type: string
  inputBinding:
    prefix: --max
- id: min
  doc: 'Reads assigned at and below min rank will be recorded as being assigned to
    the min rank level. Default: S.'
  type: string
  inputBinding:
    prefix: --min
- id: output_fp
  doc: 'Path to the BIOM-format file. By default, the table will be in the HDF5 BIOM
    2.x format. Users can output to a different format using the --fmt option. The
    output can also be gzipped using the --gzip option. Default path is: ./table.biom'
  type: string
  inputBinding:
    prefix: --output_fp
- id: otu_fp
  doc: Create a file containing just the (NCBI) OTU IDs for use with a service such
    as phyloT (http://phylot.biobyte.de/) to generate a phylogenetic tree for use
    in downstream analysis such as UniFrac, iTol (itol.embl.de), or PhyloToAST (phylotoast.org).
  type: string
  inputBinding:
    prefix: --otu_fp
- id: fmt
  doc: Set the output format of the BIOM table. Default is HDF5.
  type: string
  inputBinding:
    prefix: --fmt
- id: gzip
  doc: Compress the output BIOM table with gzip. HDF5 BIOM (v2.x) files are internally
    compressed by default, so this option is not needed when specifying --fmt hdf5.
  type: boolean
  inputBinding:
    prefix: --gzip
- id: verbose
  doc: Prints status messages during program execution.
  type: boolean
  inputBinding:
    prefix: --verbose
- id: kraken_reports
  doc: Results files from the kraken-report tool.
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- kraken-biom
