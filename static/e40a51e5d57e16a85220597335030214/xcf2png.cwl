class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/xcf2png.cwl
inputs:
- id: show_version_
  doc: show version (--version)
  type: boolean
  inputBinding:
    prefix: -V
- id: show_progress_messages
  doc: show progress messages (--verbose)
  type: boolean
  inputBinding:
    prefix: -v
- id: input_bzip_compressed
  doc: input is bzip2 compressed (--bzip)
  type: boolean
  inputBinding:
    prefix: -j
- id: input_gzip_compressed
  doc: input is gzip compressed (--gzip)
  type: boolean
  inputBinding:
    prefix: -z
- id: use_decompress_input
  doc: use 'command' to decompress input (--unpack)
  type: string
  inputBinding:
    prefix: -Z
- id: name_output_file
  doc: name output file (--output)
  type: File
  inputBinding:
    prefix: -o
- id: select_background_color
  doc: select background color (--background)
  type: string
  inputBinding:
    prefix: -b
- id: force_alpha_channel
  doc: force alpha channel in output (--force-alpha)
  type: boolean
  inputBinding:
    prefix: -A
- id: select_color_output
  doc: select color output (--color)
  type: boolean
  inputBinding:
    prefix: -c
- id: select_grayscale_output
  doc: select grayscale output (--gray)
  type: boolean
  inputBinding:
    prefix: -g
- id: treat_indexed_images
  doc: treat indexed images as RGB for flattening (--truecolor)
  type: boolean
  inputBinding:
    prefix: -T
- id: disallow_partial_transparency
  doc: disallow partial transparency (--for-gif)
  type: boolean
  inputBinding:
    prefix: -G
- id: dissolve_partial_transparency
  doc: dissolve partial transparency (--dissolve)
  type: boolean
  inputBinding:
    prefix: -D
- id: flatten_analyse_fullimage
  doc: flatten to memory; then analyse (--full-image)
  type: boolean
  inputBinding:
    prefix: -f
- id: crop_image_converting
  doc: crop image while converting (--size)
  type: string
  inputBinding:
    prefix: -S
- id: y_translate_converted
  doc: ',y      translate converted part of image (--offset)'
  type: string
  inputBinding:
    prefix: -O
- id: autocrop_visible_layer
  doc: autocrop to visible layer boundaries (--autocrop)
  type: boolean
  inputBinding:
    prefix: -C
- id: mode
  doc: set layer mode
  type: string
  inputBinding:
    prefix: --mode
- id: percent
  doc: set opacity in percent
  type: string
  inputBinding:
    prefix: --percent
- id: opacity
  doc: set opacity in 1/255 units
  type: string
  inputBinding:
    prefix: --opacity
- id: mask
  doc: enable layer mask
  type: boolean
  inputBinding:
    prefix: --mask
- id: no_mask
  doc: disable layer mask
  type: boolean
  inputBinding:
    prefix: --nomask
- id: use_utf_
  doc: use UTF-8 for layer names (--utf8)
  type: boolean
  inputBinding:
    prefix: -u
- id: filename_dot_xcf
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- xcf2png
