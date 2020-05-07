class: CommandLineTool
id: StreamingQueryDNADatabase.py.cwl
inputs:
- id: in_file
  doc: 'Input file: FASTA/Q file to be processes'
  type: string
  inputBinding:
    position: 0
- id: reference_file
  doc: Training database/reference file (in HDF5 format). Created with MakeStreamingDNADatabase.py
  type: string
  inputBinding:
    position: 1
- id: out_file
  doc: Output csv file with the containment indices.
  type: string
  inputBinding:
    position: 2
- id: range
  doc: Range of k-mer sizes in the formate <start>-<end>-<increment>. So 5-10-2 means
    [5, 7, 9]. If <end> is larger than the k-mer sizeof the training data, this will
    automatically be reduced.
  type: string
  inputBinding:
    position: 3
- id: threads
  doc: 'Number of threads to use (default: 8)'
  type: string
  inputBinding:
    prefix: --threads
- id: containment_threshold
  doc: 'Only return results with containment index above this threshold at the maximum
    k-mer size. (default: 0.1)'
  type: string
  inputBinding:
    prefix: --containment_threshold
- id: plot_file
  doc: 'Optional flag to specify that a plot of the k-mer curves should also be saved
    (same basenameas the out_file). (default: False)'
  type: boolean
  inputBinding:
    prefix: --plot_file
- id: reads_per_core
  doc: 'Number of reads per core in each chunk of parallelization. Set as high as
    memory will allow (eg. 1M on 256GB, 48 core machine) (default: 100000)'
  type: string
  inputBinding:
    prefix: --reads_per_core
- id: filter_file
  doc: "Location of pre-filter bloom filter. Use only if you absolutely know what\
    \ you're doing (hard to error check bloom filters). (default: None)"
  type: string
  inputBinding:
    prefix: --filter_file
- id: location_of_thresh
  doc: 'Location in range to apply the threshold passed by the -c flag. -l 2 -c 5-50-10
    means the threshold will be applied at k-size 25. Default is largest size. (default:
    -1)'
  type: string
  inputBinding:
    prefix: --location_of_thresh
- id: sensitive
  doc: 'Operate in sensitive mode. Marginally more true positives with significantly
    more false positives. Use with caution. (default: False)'
  type: boolean
  inputBinding:
    prefix: --sensitive
- id: verbose
  doc: 'Print out progress report/timing information (default: False)'
  type: boolean
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- StreamingQueryDNADatabase.py
