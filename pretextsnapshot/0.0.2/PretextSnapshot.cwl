class: CommandLineTool
id: PretextSnapshot.sse42.cwl
inputs:
- id: pretext_snapshot
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: options
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: m
  doc: '/--map mp:           Path to a pretext map. This option is required, except
    when using: --help, --sequenceHelp, --printColourMapNames, --version, --licence,
    --thirdParty'
  type: boolean
  inputBinding:
    prefix: -m
- id: f
  doc: '/--format fmt:        Image format, one of "png"(default) "bmp" or "jpeg".'
  type: boolean
  inputBinding:
    prefix: -f
- id: r
  doc: '/--resolution res:    Image resolution, a positive integer, default 1080.
    For non-square images this will be the resolution of the longest dimension.'
  type: boolean
  inputBinding:
    prefix: -r
- id: c
  doc: '/--colourMap cmap:    Either, a non-negative integer, indexing the colour
    map to use. Or, the name of the colour map to use. Defaults to "Three Wave Blue-Green-Yellow"
    i.e. "5".'
  type: boolean
  inputBinding:
    prefix: -c
- id: print_colour_map_names
  doc: ':  Prints a list of the available colour maps. Cannot be used with any other
    option. '
  type: boolean
  inputBinding:
    prefix: --printColourMapNames
- id: jpegquality
  doc: ':     JPEG quality factor, an integer between 1 and 100, default 80. Larger
    values result in increased image quality and file size. Only applicable to JPEG
    images.'
  type: string
  inputBinding:
    prefix: --jpegQuality
- id: o
  doc: "/--folder fldr:       Output folder path, will be created if it doesn't exist.\
    \ Defaults to the name of the pretext map."
  type: boolean
  inputBinding:
    prefix: -o
- id: prefix
  doc: ':           Prefix name for all image files. Defaults to the name of the pretext
    map + "_".'
  type: string
  inputBinding:
    prefix: --prefix
- id: sequences
  doc: ':      Sequence specification string. Each entry, except for "=all", corresponds
    to one output image. Defaults to "=full, =all".'
  type: string
  inputBinding:
    prefix: --sequences
- id: sequence_help
  doc: ':         Sequence specification string format documentation. Cannot be used
    with any other option.'
  type: boolean
  inputBinding:
    prefix: --sequenceHelp
- id: min_texels
  doc: ':       Minimum map texels per image (along a single dimension), a positive
    integer, default 64. Output images over too small a range that violate this minimum
    will not be created.'
  type: string
  inputBinding:
    prefix: --minTexels
- id: grid_size
  doc: ':       Width in pixels of the sequence separation grid, a non-negative integer,
    default 1. Set to 0 to not overlay a grid.'
  type: string
  inputBinding:
    prefix: --gridSize
- id: grid_colour
  doc: ':       Colour of the sequence separation grid. Either, one of: "black"(default),
    "white", "red", "green", "blue", "yellow", "cyan" or "magenta". Or, a sRGBA 32-bit
    hex code in RRGGBBAA format, e.g. "ff00ff80" (magenta at half-occupancy).'
  type: string
  inputBinding:
    prefix: --gridColour
- id: print_sequence_names
  doc: ':   Prints a list of the individual sequence names in the map, in order of
    appearance. Can only be used with the -m/--map option.'
  type: boolean
  inputBinding:
    prefix: --printSequenceNames
- id: verbose
  doc: ':         Verbosity level, one of: "3"(default) for error, warning and status
    messages. "2" for error and warning messages. "1" for error messages. "0" for
    no messages. Warning and status messages are printed to stdout, error messages
    to stderr.'
  type: string
  inputBinding:
    prefix: --verbose
- id: licence
  doc: ':              Prints the software licence. Cannot be used with any other
    option.'
  type: boolean
  inputBinding:
    prefix: --licence
- id: third_party
  doc: ':           Prints a list of the third-party libraries used, along with their
    respective licences. Cannot be used with any other option.'
  type: boolean
  inputBinding:
    prefix: --thirdParty
outputs: []
cwlVersion: v1.1
baseCommand:
- PretextSnapshot.sse42
