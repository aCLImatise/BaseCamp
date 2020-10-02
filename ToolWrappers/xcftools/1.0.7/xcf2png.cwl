class: CommandLineTool
id: xcf2png.cwl
inputs:
- id: in_show_version_version
  doc: show version (--version)
  type: boolean
  inputBinding:
    prefix: -V
- id: in_show_progress_messages
  doc: show progress messages (--verbose)
  type: boolean
  inputBinding:
    prefix: -v
- id: in_input_bzip_compressed
  doc: input is bzip2 compressed (--bzip)
  type: boolean
  inputBinding:
    prefix: -j
- id: in_input_gzip_compressed
  doc: input is gzip compressed (--gzip)
  type: boolean
  inputBinding:
    prefix: -z
- id: in_use__unpack
  doc: use 'command' to decompress input (--unpack)
  type: string
  inputBinding:
    prefix: -Z
- id: in_name_output_file
  doc: name output file (--output)
  type: File
  inputBinding:
    prefix: -o
- id: in_select_background_color
  doc: select background color (--background)
  type: string
  inputBinding:
    prefix: -b
- id: in_force_alpha_channel
  doc: force alpha channel in output (--force-alpha)
  type: boolean
  inputBinding:
    prefix: -A
- id: in_select_color_output
  doc: select color output (--color)
  type: boolean
  inputBinding:
    prefix: -c
- id: in_select_grayscale_output
  doc: select grayscale output (--gray)
  type: boolean
  inputBinding:
    prefix: -g
- id: in_treat_indexed_images
  doc: treat indexed images as RGB for flattening (--truecolor)
  type: boolean
  inputBinding:
    prefix: -T
- id: in_disallow_partial_transparency
  doc: disallow partial transparency (--for-gif)
  type: boolean
  inputBinding:
    prefix: -G
- id: in_dissolve_partial_transparency
  doc: dissolve partial transparency (--dissolve)
  type: boolean
  inputBinding:
    prefix: -D
- id: in_flatten_memory_then
  doc: flatten to memory; then analyse (--full-image)
  type: boolean
  inputBinding:
    prefix: -f
- id: in_crop_image_converting
  doc: crop image while converting (--size)
  type: long
  inputBinding:
    prefix: -S
- id: in_y_translate_converted
  doc: ',y      translate converted part of image (--offset)'
  type: string
  inputBinding:
    prefix: -O
- id: in_autocrop_visible_layer
  doc: autocrop to visible layer boundaries (--autocrop)
  type: boolean
  inputBinding:
    prefix: -C
- id: in_mode
  doc: set layer mode
  type: string
  inputBinding:
    prefix: --mode
- id: in_percent
  doc: set opacity in percent
  type: string
  inputBinding:
    prefix: --percent
- id: in_opacity
  doc: set opacity in 1/255 units
  type: long
  inputBinding:
    prefix: --opacity
- id: in_mask
  doc: enable layer mask
  type: boolean
  inputBinding:
    prefix: --mask
- id: in_no_mask
  doc: disable layer mask
  type: boolean
  inputBinding:
    prefix: --nomask
- id: in_use_utf_
  doc: use UTF-8 for layer names (--utf8)
  type: boolean
  inputBinding:
    prefix: -u
- id: in_filename_dot_xcf
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_name_output_file
  doc: name output file (--output)
  type: File
  outputBinding:
    glob: $(inputs.in_name_output_file)
cwlVersion: v1.1
baseCommand:
- xcf2png
