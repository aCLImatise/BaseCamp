class: CommandLineTool
id: StreamingQueryDNADatabase.py.cwl
inputs:
- id: in_threads
  doc: 'Number of threads to use (default: 8)'
  type: long
  inputBinding:
    prefix: --threads
- id: in_containment_threshold
  doc: "Only return results with containment index above this\nthreshold at the maximum\
    \ k-mer size. (default: 0.1)"
  type: long
  inputBinding:
    prefix: --containment_threshold
- id: in_plot_file
  doc: "Optional flag to specify that a plot of the k-mer\ncurves should also be saved\
    \ (same basenameas the\nout_file). (default: False)"
  type: boolean
  inputBinding:
    prefix: --plot_file
- id: in_reads_per_core
  doc: "Number of reads per core in each chunk of\nparallelization. Set as high as\
    \ memory will allow (eg.\n1M on 256GB, 48 core machine) (default: 100000)"
  type: long
  inputBinding:
    prefix: --reads_per_core
- id: in_filter_file
  doc: "Location of pre-filter bloom filter. Use only if you\nabsolutely know what\
    \ you're doing (hard to error check\nbloom filters). (default: None)"
  type: File
  inputBinding:
    prefix: --filter_file
- id: in_location_of_thresh
  doc: "Location in range to apply the threshold passed by the\n-c flag. -l 2 -c 5-50-10\
    \ means the threshold will be\napplied at k-size 25. Default is largest size.\n\
    (default: -1)"
  type: long
  inputBinding:
    prefix: --location_of_thresh
- id: in_sensitive
  doc: "Operate in sensitive mode. Marginally more true\npositives with significantly\
    \ more false positives. Use\nwith caution. (default: False)"
  type: boolean
  inputBinding:
    prefix: --sensitive
- id: in_verbose
  doc: "Print out progress report/timing information (default:\nFalse)\n"
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_in_file
  doc: 'Input file: FASTA/Q file to be processes'
  type: string
  inputBinding:
    position: 0
- id: in_reference_file
  doc: "Training database/reference file (in HDF5 format).\nCreated with MakeStreamingDNADatabase.py"
  type: string
  inputBinding:
    position: 1
- id: in_out_file
  doc: Output csv file with the containment indices.
  type: string
  inputBinding:
    position: 2
- id: in_range
  doc: "Range of k-mer sizes in the formate\n<start>-<end>-<increment>. So 5-10-2\
    \ means [5, 7, 9].\nIf <end> is larger than the k-mer sizeof the training\ndata,\
    \ this will automatically be reduced."
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- StreamingQueryDNADatabase.py
