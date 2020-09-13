version 1.0

task Dcmmklut {
  input {
    Boolean? arguments
    Boolean? quiet_quiet_mode
    Boolean? _verbose_details
    Boolean? _debug_information
    Boolean? ll
    Boolean? lc
    Boolean? min_density
    Boolean? max_density
    Boolean? _bits_umber
    Boolean? _entries_umber
    Boolean? _firstmapped_mapped
    Boolean? _random_umber
    Boolean? random_seed
    Boolean? _order_umber
    Boolean? _explanation_stringlut
    Boolean? _bytealign_create
    String dcm_img_out
  }
  command <<<
    dcmmklut \
      ~{dcm_img_out} \
      ~{if (arguments) then "--arguments" else ""} \
      ~{if (quiet_quiet_mode) then "-q" else ""} \
      ~{if (_verbose_details) then "-v" else ""} \
      ~{if (_debug_information) then "-d" else ""} \
      ~{if (ll) then "-ll" else ""} \
      ~{if (lc) then "-lc" else ""} \
      ~{if (min_density) then "--min-density" else ""} \
      ~{if (max_density) then "--max-density" else ""} \
      ~{if (_bits_umber) then "-b" else ""} \
      ~{if (_entries_umber) then "-e" else ""} \
      ~{if (_firstmapped_mapped) then "-f" else ""} \
      ~{if (_random_umber) then "-r" else ""} \
      ~{if (random_seed) then "--random-seed" else ""} \
      ~{if (_order_umber) then "-o" else ""} \
      ~{if (_explanation_stringlut) then "-E" else ""} \
      ~{if (_bytealign_create) then "-a" else ""}
  >>>
  parameter_meta {
    arguments: "print expanded command line arguments"
    quiet_quiet_mode: "--quiet         quiet mode, print no warnings and errors"
    _verbose_details: "--verbose       verbose mode, print processing details"
    _debug_information: "--debug         debug mode, print debug information"
    ll: "--log-level     [l]evel: string constant\\n(fatal, error, warn, info, debug, trace)\\nuse level l for the logger"
    lc: "--log-config    [f]ilename: string\\nuse config file f for the logger"
    min_density: "[v]alue: integer (0..65535, default: 20)\\nset min density to v (in hundreds of OD)"
    max_density: "[v]alue: integer (0..65535, default: 300)\\nset max density to v (in hundreds of OD)"
    _bits_umber: "--bits          [n]umber: integer\\ncreate LUT with n bit values (8..16, default: 16)"
    _entries_umber: "--entries       [n]umber: integer\\ncreate LUT with n entries (1..65536, default: 256)"
    _firstmapped_mapped: "--first-mapped  [n]umber: integer\\nfirst input value mapped (-31768..65535, default: 0)"
    _random_umber: "--random        [n]umber: unsigned integer\\nperform n randomly selected permutations on the LUT"
    random_seed: "[n]umber: unsigned integer\\ninitialize the random-number generator with n\\n(default: 0, for reproducible results)"
    _order_umber: "--order         [n]umber: integer\\nuse polynomial curve fitting algorithm with order n\\n(0..99, default: 5)"
    _explanation_stringlut: "--explanation   [n]ame: string\\nLUT explanation (default: automatically created)"
    _bytealign_create: "--byte-align    create byte-aligned LUT\\n(default for and only with 8 bit values)"
    dcm_img_out: "DICOM output filename"
  }
  output {
    File out_stdout = stdout()
  }
}