version 1.0

task PpanggolinSpot {
  input {
    String? output_directory_default
    Boolean? spot_graph
    Boolean? draw_hotspots
    String? overlapping_match
    String? set_size
    String? exact_match_size
    Int? interest
    String? pan_genome
    String? tmpdir
    String? verbose
    String? log
    String? cpu
    Boolean? force
  }
  command <<<
    ppanggolin spot \
      ~{if defined(output_directory_default) then ("--output " +  '"' + output_directory_default + '"') else ""} \
      ~{true="--spot_graph" false="" spot_graph} \
      ~{true="--draw_hotspots" false="" draw_hotspots} \
      ~{if defined(overlapping_match) then ("--overlapping_match " +  '"' + overlapping_match + '"') else ""} \
      ~{if defined(set_size) then ("--set_size " +  '"' + set_size + '"') else ""} \
      ~{if defined(exact_match_size) then ("--exact_match_size " +  '"' + exact_match_size + '"') else ""} \
      ~{if defined(interest) then ("--interest " +  '"' + interest + '"') else ""} \
      ~{if defined(pan_genome) then ("--pangenome " +  '"' + pan_genome + '"') else ""} \
      ~{if defined(tmpdir) then ("--tmpdir " +  '"' + tmpdir + '"') else ""} \
      ~{if defined(verbose) then ("--verbose " +  '"' + verbose + '"') else ""} \
      ~{if defined(log) then ("--log " +  '"' + log + '"') else ""} \
      ~{if defined(cpu) then ("--cpu " +  '"' + cpu + '"') else ""} \
      ~{true="--force" false="" force}
  >>>
  parameter_meta {
    output_directory_default: "Output directory (default: ppanggolin_output_DATE2020- 06-23_HOUR13.46.37_PID31916)"
    spot_graph: "Writes a graph in a .gexf format of pairs of blocks of single copy markers flanking RGPs, supposedly belonging to the same hotspot (default: False)"
    draw_hotspots: "Draws a figure representing all of the hotspots syntenies (default: False)"
    overlapping_match: "The number of 'missing' persistent genes allowed when comparing flanking genes during hotspot computations (default: 2)"
    set_size: "Number of single copy markers to use as flanking genes for a RGP during hotspot computation (default: 3)"
    exact_match_size: "Number of perfecty matching flanking single copy markers required to associate RGPs during hotspot computation (Ex: If set to 1, two RGPs are in the same hotspot if both their 1st flanking genes are the same) (default: 1)"
    interest: "Comma separated list of elements to flag when drawing hotspots (default: )"
    pan_genome: "The pangenome .h5 file (default: None)"
    tmpdir: "directory for storing temporary files (default: /tmp)"
    verbose: "Indicate verbose level (0 for warning and errors only, 1 for info, 2 for debug) (default: 1)"
    log: "log output file (default: stdout)"
    cpu: "Number of available cpus (default: 1)"
    force: "Force writing in output directory and in pangenome output file. (default: False)"
  }
}