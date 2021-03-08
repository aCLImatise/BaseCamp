version 1.0

task PpanggolinSpot {
  input {
    Directory? output_directory_defaultppanggolinoutputdatehourpid
    Boolean? spot_graph
    Boolean? draw_hotspots
    Int? overlapping_match
    Int? set_size
    Int? exact_match_size
    String? interest
    File? pan_genome
    Directory? tmpdir
    String? verbose
    File? log
    Boolean? disable_prog_bar
    Int? cpu
    File? force
  }
  command <<<
    ppanggolin spot \
      ~{if defined(output_directory_defaultppanggolinoutputdatehourpid) then ("--output " +  '"' + output_directory_defaultppanggolinoutputdatehourpid + '"') else ""} \
      ~{if (spot_graph) then "--spot_graph" else ""} \
      ~{if (draw_hotspots) then "--draw_hotspots" else ""} \
      ~{if defined(overlapping_match) then ("--overlapping_match " +  '"' + overlapping_match + '"') else ""} \
      ~{if defined(set_size) then ("--set_size " +  '"' + set_size + '"') else ""} \
      ~{if defined(exact_match_size) then ("--exact_match_size " +  '"' + exact_match_size + '"') else ""} \
      ~{if defined(interest) then ("--interest " +  '"' + interest + '"') else ""} \
      ~{if defined(pan_genome) then ("--pangenome " +  '"' + pan_genome + '"') else ""} \
      ~{if defined(tmpdir) then ("--tmpdir " +  '"' + tmpdir + '"') else ""} \
      ~{if defined(verbose) then ("--verbose " +  '"' + verbose + '"') else ""} \
      ~{if defined(log) then ("--log " +  '"' + log + '"') else ""} \
      ~{if (disable_prog_bar) then "--disable_prog_bar" else ""} \
      ~{if defined(cpu) then ("--cpu " +  '"' + cpu + '"') else ""} \
      ~{if (force) then "--force" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/ppanggolin:1.1.136--py37hf01694f_0"
  }
  parameter_meta {
    output_directory_defaultppanggolinoutputdatehourpid: "Output directory (default:\\nppanggolin_output_DATE2021-03-08_HOUR12.47.02_PID1110)"
    spot_graph: "Writes a graph in a .gexf format of pairs of blocks of\\nsingle copy markers flanking RGPs, supposedly\\nbelonging to the same hotspot (default: False)"
    draw_hotspots: "Draws a figure representing all of the hotspots\\nsyntenies (default: False)"
    overlapping_match: "The number of 'missing' persistent genes allowed when\\ncomparing flanking genes during hotspot computations\\n(default: 2)"
    set_size: "Number of single copy markers to use as flanking genes\\nfor a RGP during hotspot computation (default: 3)"
    exact_match_size: "Number of perfecty matching flanking single copy\\nmarkers required to associate RGPs during hotspot\\ncomputation (Ex: If set to 1, two RGPs are in the same\\nhotspot if both their 1st flanking genes are the same)\\n(default: 1)"
    interest: "Comma separated list of elements to flag when drawing\\nhotspots (default: )"
    pan_genome: "The pangenome .h5 file (default: None)"
    tmpdir: "directory for storing temporary files (default: /tmp)"
    verbose: "Indicate verbose level (0 for warning and errors only,\\n1 for info, 2 for debug) (default: 1)"
    log: "log output file (default: stdout)"
    disable_prog_bar: "disables the progress bars (default: False)"
    cpu: "Number of available cpus (default: 1)"
    force: "Force writing in output directory and in pangenome\\noutput file. (default: False)\\n"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_directory_defaultppanggolinoutputdatehourpid = "${in_output_directory_defaultppanggolinoutputdatehourpid}"
    File out_log = "${in_log}"
    File out_force = "${in_force}"
  }
}