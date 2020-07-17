version 1.0

task MendelscanSibd {
  input {
    Boolean? ped_file
    Boolean? markers_file
    Boolean? centromere_file
    Boolean? output_windows
    Boolean? ibd_score_threshold
    Boolean? window_resolution
    Boolean? inheritance
    String? jar
    String java
    String s_ibd
    String? fi_bd
  }
  command <<<
    mendelscan sibd \
      ~{java} \
      ~{s_ibd} \
      ~{fi_bd} \
      ~{true="--ped-file" false="" ped_file} \
      ~{true="--markers-file" false="" markers_file} \
      ~{true="--centromere-file" false="" centromere_file} \
      ~{true="--output-windows" false="" output_windows} \
      ~{true="--ibd-score-threshold" false="" ibd_score_threshold} \
      ~{true="--window-resolution" false="" window_resolution} \
      ~{true="--inheritance" false="" inheritance} \
      ~{if defined(jar) then ("-jar " +  '"' + jar + '"') else ""}
  >>>
  parameter_meta {
    ped_file: "Pedigree file in 6-column tab-delimited format"
    markers_file: "Markers file in BEAGLE format"
    centromere_file: "A tab-delimited, BED-like file indicating centromere locations by chromosome    --output-file   Output file to contain IBD markers with chromosomal coordinates"
    output_windows: "Output file to contain RHRO windows. Otherwise they print to STDOUT"
    ibd_score_threshold: "Maximum Beagle FastIBD score below which segments will be used [10e-10]"
    window_resolution: "Window size in base pairs to use for SIBD region binning [100000]"
    inheritance: "Presumed model of inheritance: dominant, recessive, x-linked [dominant]"
    jar: ""
    java: ""
    s_ibd: ""
    fi_bd: ""
  }
}