version 1.0

task Dcmmklut {
  input {
    Boolean? arguments
    Boolean? quiet
    Boolean? verbose
    Boolean? debug
    Boolean? log_level
    Boolean? log_config
    Boolean? min_density
    Boolean? max_density
    Boolean? bits
    Boolean? entries
    Boolean? first_mapped
    Boolean? random
    Boolean? random_seed
    Boolean? order
    Boolean? explanation
    Boolean? byte_align
    String dcm_img_out
  }
  command <<<
    dcmmklut \
      ~{dcm_img_out} \
      ~{if (arguments) then "--arguments" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if (log_level) then "--log-level" else ""} \
      ~{if (log_config) then "--log-config" else ""} \
      ~{if (min_density) then "--min-density" else ""} \
      ~{if (max_density) then "--max-density" else ""} \
      ~{if (bits) then "--bits" else ""} \
      ~{if (entries) then "--entries" else ""} \
      ~{if (first_mapped) then "--first-mapped" else ""} \
      ~{if (random) then "--random" else ""} \
      ~{if (random_seed) then "--random-seed" else ""} \
      ~{if (order) then "--order" else ""} \
      ~{if (explanation) then "--explanation" else ""} \
      ~{if (byte_align) then "--byte-align" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    arguments: "print expanded command line arguments"
    quiet: "quiet mode, print no warnings and errors"
    verbose: "verbose mode, print processing details"
    debug: "debug mode, print debug information"
    log_level: "[l]evel: string constant\\n(fatal, error, warn, info, debug, trace)\\nuse level l for the logger"
    log_config: "[f]ilename: string\\nuse config file f for the logger"
    min_density: "[v]alue: integer (0..65535, default: 20)\\nset min density to v (in hundreds of OD)"
    max_density: "[v]alue: integer (0..65535, default: 300)\\nset max density to v (in hundreds of OD)"
    bits: "[n]umber: integer\\ncreate LUT with n bit values (8..16, default: 16)"
    entries: "[n]umber: integer\\ncreate LUT with n entries (1..65536, default: 256)"
    first_mapped: "[n]umber: integer\\nfirst input value mapped (-31768..65535, default: 0)"
    random: "[n]umber: unsigned integer\\nperform n randomly selected permutations on the LUT"
    random_seed: "[n]umber: unsigned integer\\ninitialize the random-number generator with n\\n(default: 0, for reproducible results)"
    order: "[n]umber: integer\\nuse polynomial curve fitting algorithm with order n\\n(0..99, default: 5)"
    explanation: "[n]ame: string\\nLUT explanation (default: automatically created)"
    byte_align: "create byte-aligned LUT\\n(default for and only with 8 bit values)"
    dcm_img_out: "DICOM output filename"
  }
  output {
    File out_stdout = stdout()
  }
}