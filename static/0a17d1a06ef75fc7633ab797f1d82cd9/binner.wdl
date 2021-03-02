version 1.0

task Binner {
  input {
    Boolean? citation
    Boolean? advanced_options
    Boolean? arg_sample_identifier
    Boolean? arg_minimum_number
    Boolean? arg_combined_fraction
    Boolean? arg_minimum_required
    Boolean? arg_arbitrary_number
    Boolean? arg_binninglog_specify
  }
  command <<<
    binner \
      ~{if (citation) then "--citation" else ""} \
      ~{if (advanced_options) then "--advanced-options" else ""} \
      ~{if (arg_sample_identifier) then "-n" else ""} \
      ~{if (arg_minimum_number) then "-s" else ""} \
      ~{if (arg_combined_fraction) then "-j" else ""} \
      ~{if (arg_minimum_required) then "-i" else ""} \
      ~{if (arg_arbitrary_number) then "-f" else ""} \
      ~{if (arg_binninglog_specify) then "-l" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    citation: "show citation info"
    advanced_options: "show advanced program options"
    arg_sample_identifier: "[ --sample-identifier ] arg        unique sample identifier"
    arg_minimum_number: "[ --sequence-min-support ] arg (=50)\\nminimum number of positions supporting\\na taxonomic signal for any single\\nsequence. If not reached, a fall-back\\non a more robust algorthm will be used"
    arg_combined_fraction: "[ --signal-majority ] arg (=0.699999988)\\nminimum combined fraction of support\\nfor any single sequence (> 0.5 to be\\nstable)"
    arg_minimum_required: "[ --identity-constrain ] arg       minimum required identity for this rank\\n(e.g. -i species:0.8 -i genus:0.7)"
    arg_arbitrary_number: "[ --files ] arg                    arbitrary number of prediction files\\n(replaces standard input, use \\\"-\\\" to\\nspecify a combination of both)"
    arg_binninglog_specify: "[ --logfile ] arg (=binning.log)   specify name of file for logging\\n(appending lines)\\n"
  }
  output {
    File out_stdout = stdout()
  }
}