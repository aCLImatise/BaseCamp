version 1.0

task Fa {
  input {
    Boolean? verbose
    Boolean? desc
    Boolean? bases
    Boolean? full
    Boolean? each
    String? minsize
    Boolean? widthi_max_width
    Boolean? tabbed_produce_tab
  }
  command <<<
    fa \
      ~{true="--verbose" false="" verbose} \
      ~{true="--desc" false="" desc} \
      ~{true="--bases" false="" bases} \
      ~{true="--full" false="" full} \
      ~{true="--each" false="" each} \
      ~{if defined(minsize) then ("--minsize " +  '"' + minsize + '"') else ""} \
      ~{true="--w" false="" widthi_max_width} \
      ~{true="--t" false="" tabbed_produce_tab}
  >>>
  parameter_meta {
    verbose: "!      Debug info (default '0')."
    desc: "!         Description at end (default '0')."
    bases: "!        Base composition (implies --full) (default '0')."
    full: "!         Print details for each sequence (default '0')."
    each: "!         Don't combine results of all input files into one (default '0')."
    minsize: "Minimum size to include in calcs (default '0')."
    widthi_max_width: "|width=i     Max. width of filename column (default '25')."
    tabbed_produce_tab: "|tabbed!     Produce tab delimited output table (default '0')."
  }
}