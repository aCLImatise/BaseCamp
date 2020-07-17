version 1.0

task MbXxmotif {
  input {
    String? neg_set
    String? plot_pwm
    String? start
    String? stop
    String? width
    String? key
    String? filter_gff
    String? a_width
    Boolean? keep_tmp_files
    String input_file
    String genome
    String outdir
    String prefix
  }
  command <<<
    mb-xxmotif \
      ~{input_file} \
      ~{genome} \
      ~{outdir} \
      ~{prefix} \
      ~{if defined(neg_set) then ("--negSet " +  '"' + neg_set + '"') else ""} \
      ~{if defined(plot_pwm) then ("--plotPWM " +  '"' + plot_pwm + '"') else ""} \
      ~{if defined(start) then ("--start " +  '"' + start + '"') else ""} \
      ~{if defined(stop) then ("--stop " +  '"' + stop + '"') else ""} \
      ~{if defined(width) then ("--width " +  '"' + width + '"') else ""} \
      ~{if defined(key) then ("--key " +  '"' + key + '"') else ""} \
      ~{if defined(filter_gff) then ("--filterGFF " +  '"' + filter_gff + '"') else ""} \
      ~{if defined(a_width) then ("--awidth " +  '"' + a_width + '"') else ""} \
      ~{true="--keep-tmp-files" false="" keep_tmp_files}
  >>>
  parameter_meta {
    neg_set: "set path to negative set if available."
    plot_pwm: "plot top plotPWM PWMs as pdf sequence logos"
    start: "start index of PAR-CLIP sites"
    stop: "stop index of PAR-CLIP sites"
    width: "number of nt +/- the crosslink site"
    key: "set key that is used for PAR-CLIP site ordering"
    filter_gff: "set path to GFF if sites should be removed that overlap with the GFF. Does not filter by default."
    a_width: "number of nt that are added to the start/stop indices of the GFF annotations"
    keep_tmp_files: "do not clean up temporary files"
    input_file: "PAR-CLIP file *.table"
    genome: "path to genome"
    outdir: "output directory"
    prefix: "prefix"
  }
}