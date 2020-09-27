class: CommandLineTool
id: PretextSnapshot.sse42.cwl
inputs:
- id: in_m_slash_map
  doc: ":           Path to a pretext map.\nThis option is required, except when using:\n\
    --help,\n--sequenceHelp,\n--printColourMapNames,\n--version,\n--licence,\n--thirdParty"
  type: File
  inputBinding:
    prefix: -m/--map
- id: in_f_slash_format
  doc: ':        Image format, one of "png"(default) "bmp" or "jpeg".'
  type: string
  inputBinding:
    prefix: -f/--format
- id: in_r_slash_resolution
  doc: ":    Image resolution, a positive integer, default 1080.\nFor non-square images\
    \ this will be the resolution\nof the longest dimension."
  type: long
  inputBinding:
    prefix: -r/--resolution
- id: in_c_slash_colour_map
  doc: ":    Either, a non-negative integer, indexing the colour map to use.\nOr,\
    \ the name of the colour map to use.\nDefaults to \"Three Wave Blue-Green-Yellow\"\
    \ i.e. \"5\"."
  type: long
  inputBinding:
    prefix: -c/--colourMap
- id: in_print_colour_map_names
  doc: ":  Prints a list of the available colour maps.\nCannot be used with any other\
    \ option."
  type: boolean
  inputBinding:
    prefix: --printColourMapNames
- id: in_jpegquality
  doc: ":     JPEG quality factor, an integer between 1 and 100, default 80.\nLarger\
    \ values result in increased image quality and file size.\nOnly applicable to\
    \ JPEG images."
  type: long
  inputBinding:
    prefix: --jpegQuality
- id: in_oslash_folder
  doc: ":       Output folder path, will be created if it doesn't exist.\nDefaults\
    \ to the name of the pretext map."
  type: File
  inputBinding:
    prefix: -o/--folder
- id: in_prefix
  doc: ":           Prefix name for all image files.\nDefaults to the name of the\
    \ pretext map + \"_\"."
  type: string
  inputBinding:
    prefix: --prefix
- id: in_sequences
  doc: ":      Sequence specification string. Each entry, except for \"=all\", corresponds\
    \ to one output image.\nDefaults to \"=full, =all\"."
  type: string
  inputBinding:
    prefix: --sequences
- id: in_sequence_help
  doc: ":         Sequence specification string format documentation.\nCannot be used\
    \ with any other option."
  type: boolean
  inputBinding:
    prefix: --sequenceHelp
- id: in_min_texels
  doc: ":       Minimum map texels per image (along a single dimension), a positive\
    \ integer, default 64.\nOutput images over too small a range that violate this\
    \ minimum will not be created."
  type: long
  inputBinding:
    prefix: --minTexels
- id: in_grid_size
  doc: ":       Width in pixels of the sequence separation grid, a non-negative integer,\
    \ default 1.\nSet to 0 to not overlay a grid."
  type: long
  inputBinding:
    prefix: --gridSize
- id: in_grid_colour
  doc: ":       Colour of the sequence separation grid.\nEither, one of: \"black\"\
    (default), \"white\", \"red\", \"green\", \"blue\", \"yellow\", \"cyan\" or \"\
    magenta\".\nOr, a sRGBA 32-bit hex code in RRGGBBAA format, e.g. \"ff00ff80\"\
    \ (magenta at half-occupancy)."
  type: long
  inputBinding:
    prefix: --gridColour
- id: in_print_sequence_names
  doc: ":   Prints a list of the individual sequence names in the map, in order of\
    \ appearance.\nCan only be used with the -m/--map option."
  type: boolean
  inputBinding:
    prefix: --printSequenceNames
- id: in_verbose
  doc: ":         Verbosity level, one of: \"3\"(default) for error, warning and status\
    \ messages.\n\"2\" for error and warning messages.\n\"1\" for error messages.\n\
    \"0\" for no messages.\nWarning and status messages are printed to stdout, error\
    \ messages to stderr."
  type: long
  inputBinding:
    prefix: --verbose
- id: in_licence
  doc: ":              Prints the software licence.\nCannot be used with any other\
    \ option."
  type: boolean
  inputBinding:
    prefix: --licence
- id: in_third_party
  doc: ":           Prints a list of the third-party libraries used, along with their\
    \ respective licences.\nCannot be used with any other option.\n"
  type: boolean
  inputBinding:
    prefix: --thirdParty
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_oslash_folder
  doc: ":       Output folder path, will be created if it doesn't exist.\nDefaults\
    \ to the name of the pretext map."
  type: File
  outputBinding:
    glob: $(inputs.in_oslash_folder)
cwlVersion: v1.1
baseCommand:
- PretextSnapshot.sse42
