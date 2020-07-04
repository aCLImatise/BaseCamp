version 1.0

task ProtProphModels.pl {
  input {
    File? _specify_file
    String? _specify_counted
    String? _specify_excluded
    String? _specify_decoy
    Boolean? _delete_files
    Boolean? _use_confidence
    Boolean? _generate_plots
  }
  command <<<
    ProtProphModels.pl \
      ~{if defined(_specify_file) then ("-i " +  '"' + _specify_file + '"') else ""} \
      ~{if defined(_specify_counted) then ("-d " +  '"' + _specify_counted + '"') else ""} \
      ~{if defined(_specify_excluded) then ("-x " +  '"' + _specify_excluded + '"') else ""} \
      ~{if defined(_specify_decoy) then ("-r " +  '"' + _specify_decoy + '"') else ""} \
      ~{true="-k" false="" _delete_files} \
      ~{true="-c" false="" _use_confidence} \
      ~{true="-G" false="" _generate_plots}
  >>>
  parameter_meta {
    _specify_file: "-- Specify protXML file to process."
    _specify_counted: "-- Specify protein prefix indicating decoys to be counted."
    _specify_excluded: "-- Specify protein prefix indicating decoys to be excluded."
    _specify_decoy: "-- Specify decoy ratio. Will guess from P<0.002 hits if not specified."
    _delete_files: "-- Don't delete intermediate files (only relevant when using -G option)."
    _use_confidence: "-- Use confidence not the probability."
    _generate_plots: "-- Generate plots using Gnuplot, as opposed to inserting analysis data into source protXML file."
  }
}