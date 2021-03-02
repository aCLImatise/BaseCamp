class: CommandLineTool
id: runFlockMFI.py.cwl
inputs:
- id: in_file_location_fcs
  doc: File location for the FCS file.
  type: File?
  inputBinding:
    prefix: -i
- id: in_run_flock_flock
  doc: Run flock1 or flock2.
  type: long?
  inputBinding:
    prefix: -m
- id: in_what_calculate_centroids
  doc: what to calculate for centroids.
  type: string?
  inputBinding:
    prefix: -M
- id: in_number_of_bins
  doc: Number of Bins.
  type: long?
  inputBinding:
    prefix: -b
- id: in_density
  doc: Density.
  type: string?
  inputBinding:
    prefix: -d
- id: in_file_location_output_file
  doc: File location for the output file.
  type: File?
  inputBinding:
    prefix: -o
- id: in_file_location_output_centroid
  doc: File location for the output centroid file.
  type: File?
  inputBinding:
    prefix: -c
- id: in_file_location_output_profile
  doc: File location for the output profile file.
  type: File?
  inputBinding:
    prefix: -p
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_file_location_output_file
  doc: File location for the output file.
  type: File?
  outputBinding:
    glob: $(inputs.in_file_location_output_file)
- id: out_file_location_output_centroid
  doc: File location for the output centroid file.
  type: File?
  outputBinding:
    glob: $(inputs.in_file_location_output_centroid)
- id: out_file_location_output_profile
  doc: File location for the output profile file.
  type: File?
  outputBinding:
    glob: $(inputs.in_file_location_output_profile)
hints: []
cwlVersion: v1.1
baseCommand:
- runFlockMFI.py
