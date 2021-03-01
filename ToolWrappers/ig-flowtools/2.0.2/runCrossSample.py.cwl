class: CommandLineTool
id: runCrossSample.py.cwl
inputs:
- id: in_file_locations_flow
  doc: File locations for flow text files.
  type: File?
  inputBinding:
    prefix: -i
- id: in_filenames
  doc: Filenames
  type: string?
  inputBinding:
    prefix: -n
- id: in_file_location_mfi_text
  doc: File location for the MFI text file.
  type: File?
  inputBinding:
    prefix: -m
- id: in_path_directory_output
  doc: Path to the directory for the output files.
  type: File?
  inputBinding:
    prefix: -o
- id: in_what_calculate_centroids
  doc: what to calculate for centroids.
  type: string?
  inputBinding:
    prefix: -M
- id: in_file_location_summary
  doc: File location for the summary statistics.
  type: File?
  inputBinding:
    prefix: -s
- id: in_file_location_mfi_summary
  doc: File location for the MFI summary statistics.
  type: File?
  inputBinding:
    prefix: -S
- id: in_file_location_stats
  doc: File location for stats on all markers.
  type: File?
  inputBinding:
    prefix: -a
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_path_directory_output
  doc: Path to the directory for the output files.
  type: File?
  outputBinding:
    glob: $(inputs.in_path_directory_output)
hints: []
cwlVersion: v1.1
baseCommand:
- runCrossSample.py
