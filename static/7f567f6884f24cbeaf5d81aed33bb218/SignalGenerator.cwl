class: CommandLineTool
id: ../../../SignalGenerator.sh.cwl
inputs:
- id: directory_containing_sample_files
  doc: Directory containing sample files (required)
  type: boolean
  inputBinding:
    prefix: -s
- id: genome_size_file
  doc: Genome size file (required)
  type: boolean
  inputBinding:
    prefix: -g
- id: output_directory_required
  doc: Output Directory (required)
  type: boolean
  inputBinding:
    prefix: -o
- id: directory_containing_input_files
  doc: directory containing input or Control files
  type: boolean
  inputBinding:
    prefix: -c
- id: file_regions_signal
  doc: file with Regions to get signal for (required)
  type: boolean
  inputBinding:
    prefix: -r
- id: bin_size_signal
  doc: 'Bin size for signal generation (default: 10)'
  type: boolean
  inputBinding:
    prefix: -b
- id: fragment_lengths_required
  doc: Fragment lengths (required if -t is "single")
  type: boolean
  inputBinding:
    prefix: -f
- id: number_processors_used
  doc: 'Number of processors used by R scripts (default: 1)'
  type: boolean
  inputBinding:
    prefix: -p
- id: alignment_type_paired
  doc: 'Alignment type, paired or single (default: single)'
  type: boolean
  inputBinding:
    prefix: -t
- id: normalization_method_chromaverage
  doc: 'Normalization method, chromAverage or depth (default: chromAverage)'
  type: boolean
  inputBinding:
    prefix: -n
outputs: []
cwlVersion: v1.1
baseCommand:
- SignalGenerator.sh
