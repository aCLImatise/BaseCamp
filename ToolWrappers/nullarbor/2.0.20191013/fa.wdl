version 1.0

task Fa {
  input {
    Boolean? verbose
    Boolean? desc
    Boolean? bases
    Boolean? full
    Boolean? each
    Int? minsize
    Boolean? widthi_max_width
    Boolean? tabbed_produce_tab
  }
  command <<<
    fa \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (desc) then "--desc" else ""} \
      ~{if (bases) then "--bases" else ""} \
      ~{if (full) then "--full" else ""} \
      ~{if (each) then "--each" else ""} \
      ~{if defined(minsize) then ("--minsize " +  '"' + minsize + '"') else ""} \
      ~{if (widthi_max_width) then "--w" else ""} \
      ~{if (tabbed_produce_tab) then "--t" else ""}
  >>>
  runtime {
    docker: "None"
  }
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
  output {
    File out_stdout = stdout()
  }
}