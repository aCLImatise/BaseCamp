version 1.0

task PretextSnapshot.sse42 {
  input {
    String? m_slash_map
    String? f_slash_format
    String? r_slash_resolution
    String? c_slash_colour_map
    Boolean? print_colour_map_names
    String? jpegquality
    String? oslash_folder
    String? prefix
    String? sequences
    Boolean? sequence_help
    String? min_texels
    String? grid_size
    String? grid_colour
    Boolean? print_sequence_names
    String? verbose
    Boolean? licence
    Boolean? third_party
  }
  command <<<
    PretextSnapshot.sse42 \
      ~{if defined(m_slash_map) then ("-m/--map " +  '"' + m_slash_map + '"') else ""} \
      ~{if defined(f_slash_format) then ("-f/--format " +  '"' + f_slash_format + '"') else ""} \
      ~{if defined(r_slash_resolution) then ("-r/--resolution " +  '"' + r_slash_resolution + '"') else ""} \
      ~{if defined(c_slash_colour_map) then ("-c/--colourMap " +  '"' + c_slash_colour_map + '"') else ""} \
      ~{true="--printColourMapNames" false="" print_colour_map_names} \
      ~{if defined(jpegquality) then ("--jpegQuality " +  '"' + jpegquality + '"') else ""} \
      ~{if defined(oslash_folder) then ("-o/--folder " +  '"' + oslash_folder + '"') else ""} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{if defined(sequences) then ("--sequences " +  '"' + sequences + '"') else ""} \
      ~{true="--sequenceHelp" false="" sequence_help} \
      ~{if defined(min_texels) then ("--minTexels " +  '"' + min_texels + '"') else ""} \
      ~{if defined(grid_size) then ("--gridSize " +  '"' + grid_size + '"') else ""} \
      ~{if defined(grid_colour) then ("--gridColour " +  '"' + grid_colour + '"') else ""} \
      ~{true="--printSequenceNames" false="" print_sequence_names} \
      ~{if defined(verbose) then ("--verbose " +  '"' + verbose + '"') else ""} \
      ~{true="--licence" false="" licence} \
      ~{true="--thirdParty" false="" third_party}
  >>>
  parameter_meta {
    m_slash_map: ":           Path to a pretext map. This option is required, except when using: --help, --sequenceHelp, --printColourMapNames, --version, --licence, --thirdParty"
    f_slash_format: ":        Image format, one of \"png\"(default) \"bmp\" or \"jpeg\"."
    r_slash_resolution: ":    Image resolution, a positive integer, default 1080. For non-square images this will be the resolution of the longest dimension."
    c_slash_colour_map: ":    Either, a non-negative integer, indexing the colour map to use. Or, the name of the colour map to use. Defaults to \"Three Wave Blue-Green-Yellow\" i.e. \"5\"."
    print_colour_map_names: ":  Prints a list of the available colour maps. Cannot be used with any other option. "
    jpegquality: ":     JPEG quality factor, an integer between 1 and 100, default 80. Larger values result in increased image quality and file size. Only applicable to JPEG images."
    oslash_folder: ":       Output folder path, will be created if it doesn't exist. Defaults to the name of the pretext map."
    prefix: ":           Prefix name for all image files. Defaults to the name of the pretext map + \"_\"."
    sequences: ":      Sequence specification string. Each entry, except for \"=all\", corresponds to one output image. Defaults to \"=full, =all\"."
    sequence_help: ":         Sequence specification string format documentation. Cannot be used with any other option."
    min_texels: ":       Minimum map texels per image (along a single dimension), a positive integer, default 64. Output images over too small a range that violate this minimum will not be created."
    grid_size: ":       Width in pixels of the sequence separation grid, a non-negative integer, default 1. Set to 0 to not overlay a grid."
    grid_colour: ":       Colour of the sequence separation grid. Either, one of: \"black\"(default), \"white\", \"red\", \"green\", \"blue\", \"yellow\", \"cyan\" or \"magenta\". Or, a sRGBA 32-bit hex code in RRGGBBAA format, e.g. \"ff00ff80\" (magenta at half-occupancy)."
    print_sequence_names: ":   Prints a list of the individual sequence names in the map, in order of appearance. Can only be used with the -m/--map option."
    verbose: ":         Verbosity level, one of: \"3\"(default) for error, warning and status messages. \"2\" for error and warning messages. \"1\" for error messages. \"0\" for no messages. Warning and status messages are printed to stdout, error messages to stderr."
    licence: ":              Prints the software licence. Cannot be used with any other option."
    third_party: ":           Prints a list of the third-party libraries used, along with their respective licences. Cannot be used with any other option."
  }
}