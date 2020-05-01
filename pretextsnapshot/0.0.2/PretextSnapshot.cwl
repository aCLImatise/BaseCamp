#!/usr/bin/env cwl-runner

baseCommand:
- PretextSnapshot.sse42
class: CommandLineTool
cwlVersion: v1.0
id: pretextsnapshot.sse42
inputs:
- doc: ''
  id: pretext_snapshot
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: options
  inputBinding:
    position: 1
  type: string
- doc: '/--map mp:           Path to a pretext map. This option is required, except
    when using: --help, --sequenceHelp, --printColourMapNames, --version, --licence,
    --thirdParty'
  id: m
  inputBinding:
    prefix: -m
  type: boolean
- doc: '/--format fmt:        Image format, one of "png"(default) "bmp" or "jpeg".'
  id: f
  inputBinding:
    prefix: -f
  type: boolean
- doc: '/--resolution res:    Image resolution, a positive integer, default 1080.
    For non-square images this will be the resolution of the longest dimension.'
  id: r
  inputBinding:
    prefix: -r
  type: boolean
- doc: '/--colourMap cmap:    Either, a non-negative integer, indexing the colour
    map to use. Or, the name of the colour map to use. Defaults to "Three Wave Blue-Green-Yellow"
    i.e. "5".'
  id: c
  inputBinding:
    prefix: -c
  type: boolean
- doc: ':  Prints a list of the available colour maps. Cannot be used with any other
    option. '
  id: print_colour_map_names
  inputBinding:
    prefix: --printColourMapNames
  type: boolean
- doc: ':     JPEG quality factor, an integer between 1 and 100, default 80. Larger
    values result in increased image quality and file size. Only applicable to JPEG
    images.'
  id: jpegquality
  inputBinding:
    prefix: --jpegQuality
  type: string
- doc: "/--folder fldr:       Output folder path, will be created if it doesn't exist.\
    \ Defaults to the name of the pretext map."
  id: o
  inputBinding:
    prefix: -o
  type: boolean
- doc: ':           Prefix name for all image files. Defaults to the name of the pretext
    map + "_".'
  id: prefix
  inputBinding:
    prefix: --prefix
  type: string
- doc: ':      Sequence specification string. Each entry, except for "=all", corresponds
    to one output image. Defaults to "=full, =all".'
  id: sequences
  inputBinding:
    prefix: --sequences
  type: string
- doc: ':         Sequence specification string format documentation. Cannot be used
    with any other option.'
  id: sequence_help
  inputBinding:
    prefix: --sequenceHelp
  type: boolean
- doc: ':       Minimum map texels per image (along a single dimension), a positive
    integer, default 64. Output images over too small a range that violate this minimum
    will not be created.'
  id: min_texels
  inputBinding:
    prefix: --minTexels
  type: string
- doc: ':       Width in pixels of the sequence separation grid, a non-negative integer,
    default 1. Set to 0 to not overlay a grid.'
  id: grid_size
  inputBinding:
    prefix: --gridSize
  type: string
- doc: ':       Colour of the sequence separation grid. Either, one of: "black"(default),
    "white", "red", "green", "blue", "yellow", "cyan" or "magenta". Or, a sRGBA 32-bit
    hex code in RRGGBBAA format, e.g. "ff00ff80" (magenta at half-occupancy).'
  id: grid_colour
  inputBinding:
    prefix: --gridColour
  type: string
- doc: ':   Prints a list of the individual sequence names in the map, in order of
    appearance. Can only be used with the -m/--map option.'
  id: print_sequence_names
  inputBinding:
    prefix: --printSequenceNames
  type: boolean
- doc: ':         Verbosity level, one of: "3"(default) for error, warning and status
    messages. "2" for error and warning messages. "1" for error messages. "0" for
    no messages. Warning and status messages are printed to stdout, error messages
    to stderr.'
  id: verbose
  inputBinding:
    prefix: --verbose
  type: string
- doc: ':              Prints the software licence. Cannot be used with any other
    option.'
  id: licence
  inputBinding:
    prefix: --licence
  type: boolean
- doc: ':           Prints a list of the third-party libraries used, along with their
    respective licences. Cannot be used with any other option.'
  id: third_party
  inputBinding:
    prefix: --thirdParty
  type: boolean
