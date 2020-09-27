class: CommandLineTool
id: fits2bitmap.cwl
inputs:
- id: in_ext
  doc: "Specify the HDU extension number or name (Default is\n0)."
  type: long
  inputBinding:
    prefix: --ext
- id: in_filename_output_image
  doc: "Filename for the output image (Default is a PNG file\nwith the same name as\
    \ the FITS file)."
  type: File
  inputBinding:
    prefix: -o
- id: in_stretch
  doc: "Type of image stretching (\"linear\", \"sqrt\", \"power\",\n\"log\", or \"\
    asinh\") (Default is \"linear\")."
  type: string
  inputBinding:
    prefix: --stretch
- id: in_power
  doc: Power index for "power" stretching (Default is 1.0).
  type: double
  inputBinding:
    prefix: --power
- id: in_asinh_a
  doc: "The value in normalized image where the asinh curve\ntransitions from linear\
    \ to logarithmic behavior (used\nonly for \"asinh\" stretch) (Default is 0.1)."
  type: double
  inputBinding:
    prefix: --asinh_a
- id: in_min_cut
  doc: "The pixel value of the minimum cut level (Default is\nthe image minimum)."
  type: long
  inputBinding:
    prefix: --min_cut
- id: in_max_cut
  doc: "The pixel value of the maximum cut level (Default is\nthe image maximum)."
  type: long
  inputBinding:
    prefix: --max_cut
- id: in_min_percent
  doc: "The percentile value used to determine the minimum cut\nlevel (Default is\
    \ 0)."
  type: long
  inputBinding:
    prefix: --min_percent
- id: in_max_percent
  doc: "The percentile value used to determine the maximum cut\nlevel (Default is\
    \ 100)."
  type: long
  inputBinding:
    prefix: --max_percent
- id: in_percent
  doc: "The percentage of the image values used to determine\nthe pixel values of\
    \ the minimum and maximum cut levels\n(Default is 100)."
  type: long
  inputBinding:
    prefix: --percent
- id: in_cmap
  doc: matplotlib color map name (Default is "Greys_r").
  type: string
  inputBinding:
    prefix: --cmap
- id: in_filename
  doc: Path to one or more FITS files to convert
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_filename_output_image
  doc: "Filename for the output image (Default is a PNG file\nwith the same name as\
    \ the FITS file)."
  type: File
  outputBinding:
    glob: $(inputs.in_filename_output_image)
cwlVersion: v1.1
baseCommand:
- fits2bitmap
