version 1.0

task Binner {
  input {
    Boolean? citation
    Boolean? advanced_options
    Boolean? arg_unique_sample
    Boolean? arg_minimum_number
    Boolean? arg_minimum_combined
    Boolean? arg_minimum_required
    Boolean? arg_arbitrary_number
    Boolean? arg_binninglog_specify
  }
  command <<<
    binner \
      ~{true="--citation" false="" citation} \
      ~{true="--advanced-options" false="" advanced_options} \
      ~{true="-n" false="" arg_unique_sample} \
      ~{true="-s" false="" arg_minimum_number} \
      ~{true="-j" false="" arg_minimum_combined} \
      ~{true="-i" false="" arg_minimum_required} \
      ~{true="-f" false="" arg_arbitrary_number} \
      ~{true="-l" false="" arg_binninglog_specify}
  >>>
  parameter_meta {
    citation: "show citation info"
    advanced_options: "show advanced program options"
    arg_unique_sample: "[ --sample-identifier ] arg        unique sample identifier"
    arg_minimum_number: "[ --sequence-min-support ] arg (=50) minimum number of positions supporting  a taxonomic signal for any single  sequence. If not reached, a fall-back  on a more robust algorthm will be used"
    arg_minimum_combined: "[ --signal-majority ] arg (=0.699999988) minimum combined fraction of support  for any single sequence (> 0.5 to be  stable)"
    arg_minimum_required: "[ --identity-constrain ] arg       minimum required identity for this rank (e.g. -i species:0.8 -i genus:0.7)"
    arg_arbitrary_number: "[ --files ] arg                    arbitrary number of prediction files  (replaces standard input, use \"-\" to  specify a combination of both)"
    arg_binninglog_specify: "[ --logfile ] arg (=binning.log)   specify name of file for logging  (appending lines)"
  }
}