version 1.0

task PpanggolinDraw {
  input {
    String? pan_genome
    String? output_directory_default
    Boolean? tile_plot
    Boolean? no_cloud
    String? soft_core
    Boolean? u_curve
    String? tmpdir
    String? verbose
    String? log
    String? cpu
    Boolean? force
  }
  command <<<
    ppanggolin draw \
      ~{if defined(pan_genome) then ("--pangenome " +  '"' + pan_genome + '"') else ""} \
      ~{if defined(output_directory_default) then ("--output " +  '"' + output_directory_default + '"') else ""} \
      ~{true="--tile_plot" false="" tile_plot} \
      ~{true="--nocloud" false="" no_cloud} \
      ~{if defined(soft_core) then ("--soft_core " +  '"' + soft_core + '"') else ""} \
      ~{true="--ucurve" false="" u_curve} \
      ~{if defined(tmpdir) then ("--tmpdir " +  '"' + tmpdir + '"') else ""} \
      ~{if defined(verbose) then ("--verbose " +  '"' + verbose + '"') else ""} \
      ~{if defined(log) then ("--log " +  '"' + log + '"') else ""} \
      ~{if defined(cpu) then ("--cpu " +  '"' + cpu + '"') else ""} \
      ~{true="--force" false="" force}
  >>>
  parameter_meta {
    pan_genome: "The pangenome .h5 file (default: None)"
    output_directory_default: "Output directory (default: ppanggolin_output_DATE2020- 06-23_HOUR13.44.56_PID30847)"
    tile_plot: "draw the tile plot of the pangenome (default: False)"
    no_cloud: "Do not draw the cloud in the tile plot (default: False)"
    soft_core: "Soft core threshold to use (default: 0.95)"
    u_curve: "draw the U-curve of the pangenome (default: False)"
    tmpdir: "directory for storing temporary files (default: /tmp)"
    verbose: "Indicate verbose level (0 for warning and errors only, 1 for info, 2 for debug) (default: 1)"
    log: "log output file (default: stdout)"
    cpu: "Number of available cpus (default: 1)"
    force: "Force writing in output directory and in pangenome output file. (default: False)"
  }
}