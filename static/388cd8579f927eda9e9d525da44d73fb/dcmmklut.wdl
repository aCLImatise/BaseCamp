version 1.0

task Dcmmklut {
  input {
    Boolean? _quiet_print
    Boolean? _verbose_verbose
    Boolean? _debug_debug
    Boolean? ll
    Boolean? lc
    Boolean? min_density
    Boolean? max_density
    Boolean? _bits_umber
    Boolean? _entries_umber
    Boolean? _firstmapped_umber
    Boolean? _random_umber
    Boolean? random_seed
    Boolean? _order_umber
    Boolean? _explanation_string
    String dcm_img_out
  }
  command <<<
    dcmmklut \
      ~{dcm_img_out} \
      ~{true="-q" false="" _quiet_print} \
      ~{true="-v" false="" _verbose_verbose} \
      ~{true="-d" false="" _debug_debug} \
      ~{true="-ll" false="" ll} \
      ~{true="-lc" false="" lc} \
      ~{true="--min-density" false="" min_density} \
      ~{true="--max-density" false="" max_density} \
      ~{true="-b" false="" _bits_umber} \
      ~{true="-e" false="" _entries_umber} \
      ~{true="-f" false="" _firstmapped_umber} \
      ~{true="-r" false="" _random_umber} \
      ~{true="--random-seed" false="" random_seed} \
      ~{true="-o" false="" _order_umber} \
      ~{true="-E" false="" _explanation_string}
  >>>
  parameter_meta {
    _quiet_print: "--quiet         quiet mode, print no warnings and errors"
    _verbose_verbose: "--verbose       verbose mode, print processing details"
    _debug_debug: "--debug         debug mode, print debug information"
    ll: "--log-level     [l]evel: string constant (fatal, error, warn, info, debug, trace) use level l for the logger"
    lc: "--log-config    [f]ilename: string use config file f for the logger"
    min_density: "[v]alue: integer (0..65535, default: 20) set min density to v (in hundreds of OD)"
    max_density: "[v]alue: integer (0..65535, default: 300) set max density to v (in hundreds of OD)"
    _bits_umber: "--bits          [n]umber: integer create LUT with n bit values (8..16, default: 16)"
    _entries_umber: "--entries       [n]umber: integer create LUT with n entries (1..65536, default: 256)"
    _firstmapped_umber: "--first-mapped  [n]umber: integer first input value mapped (-31768..65535, default: 0)"
    _random_umber: "--random        [n]umber: unsigned integer perform n randomly selected permutations on the LUT"
    random_seed: "[n]umber: unsigned integer initialize the random-number generator with n (default: 0, for reproducible results)"
    _order_umber: "--order         [n]umber: integer use polynomial curve fitting algorithm with order n (0..99, default: 5)"
    _explanation_string: "--explanation   [n]ame: string LUT explanation (default: automatically created)"
    dcm_img_out: "DICOM output filename"
  }
}