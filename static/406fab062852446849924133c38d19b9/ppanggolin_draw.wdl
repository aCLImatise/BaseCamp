version 1.0

task PpanggolinDraw {
  input {
    File? pan_genome
    Directory? output_directory_defaultppanggolinoutputdatehourpid
    Boolean? tile_plot
    Boolean? no_cloud
    Float? soft_core
    Boolean? u_curve
    Directory? tmpdir
    String? verbose
    File? log
    Int? cpu
    File? force
  }
  command <<<
    ppanggolin draw \
      ~{if defined(pan_genome) then ("--pangenome " +  '"' + pan_genome + '"') else ""} \
      ~{if defined(output_directory_defaultppanggolinoutputdatehourpid) then ("--output " +  '"' + output_directory_defaultppanggolinoutputdatehourpid + '"') else ""} \
      ~{if (tile_plot) then "--tile_plot" else ""} \
      ~{if (no_cloud) then "--nocloud" else ""} \
      ~{if defined(soft_core) then ("--soft_core " +  '"' + soft_core + '"') else ""} \
      ~{if (u_curve) then "--ucurve" else ""} \
      ~{if defined(tmpdir) then ("--tmpdir " +  '"' + tmpdir + '"') else ""} \
      ~{if defined(verbose) then ("--verbose " +  '"' + verbose + '"') else ""} \
      ~{if defined(log) then ("--log " +  '"' + log + '"') else ""} \
      ~{if defined(cpu) then ("--cpu " +  '"' + cpu + '"') else ""} \
      ~{if (force) then "--force" else ""}
  >>>
  parameter_meta {
    pan_genome: "The pangenome .h5 file (default: None)"
    output_directory_defaultppanggolinoutputdatehourpid: "Output directory (default:\\nppanggolin_output_DATE2020-09-09_HOUR23.40.55_PID1558)"
    tile_plot: "draw the tile plot of the pangenome (default: False)"
    no_cloud: "Do not draw the cloud in the tile plot (default:\\nFalse)"
    soft_core: "Soft core threshold to use (default: 0.95)"
    u_curve: "draw the U-curve of the pangenome (default: False)"
    tmpdir: "directory for storing temporary files (default: /tmp)"
    verbose: "Indicate verbose level (0 for warning and errors only,\\n1 for info, 2 for debug) (default: 1)"
    log: "log output file (default: stdout)"
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