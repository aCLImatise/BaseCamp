class: CommandLineTool
id: xcf2pnm.cwl
inputs:
- id: v
  doc: show version (--version)
  type: boolean
  inputBinding:
    prefix: -V
- id: v
  doc: show progress messages (--verbose)
  type: boolean
  inputBinding:
    prefix: -v
- id: j
  doc: input is bzip2 compressed (--bzip)
  type: boolean
  inputBinding:
    prefix: -j
- id: z
  doc: input is gzip compressed (--gzip)
  type: boolean
  inputBinding:
    prefix: -z
- id: z
  doc: use 'command' to decompress input (--unpack)
  type: string
  inputBinding:
    prefix: -Z
- id: o
  doc: name output file (--output)
  type: File
  inputBinding:
    prefix: -o
- id: a
  doc: write transparency map (--alpha)
  type: File
  inputBinding:
    prefix: -a
- id: b
  doc: select background color (--background)
  type: string
  inputBinding:
    prefix: -b
- id: a
  doc: force alpha channel in output (--force-alpha)
  type: boolean
  inputBinding:
    prefix: -A
- id: c
  doc: select color output (--color)
  type: boolean
  inputBinding:
    prefix: -c
- id: g
  doc: select grayscale output (--gray)
  type: boolean
  inputBinding:
    prefix: -g
- id: m
  doc: select monochrome output (--mono)
  type: boolean
  inputBinding:
    prefix: -m
- id: n
  doc: select -c/-g/-m by image contents (--pnm)
  type: boolean
  inputBinding:
    prefix: -n
- id: t
  doc: treat indexed images as RGB for flattening (--truecolor)
  type: boolean
  inputBinding:
    prefix: -T
- id: g
  doc: disallow partial transparency (--for-gif)
  type: boolean
  inputBinding:
    prefix: -G
- id: d
  doc: dissolve partial transparency (--dissolve)
  type: boolean
  inputBinding:
    prefix: -D
- id: f
  doc: flatten to memory; then analyse (--full-image)
  type: boolean
  inputBinding:
    prefix: -f
- id: s
  doc: crop image while converting (--size)
  type: string
  inputBinding:
    prefix: -S
- id: o
  doc: ',y      translate converted part of image (--offset)'
  type: string
  inputBinding:
    prefix: -O
- id: c
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
- id: u
  doc: use UTF-8 for layer names (--utf8)
  type: boolean
  inputBinding:
    prefix: -u
outputs: []
cwlVersion: v1.1
baseCommand:
- xcf2pnm
