version 1.0

task MendelscanSibd {
  input {
    Boolean? ped_file
    Boolean? markers_file
    File? centromere_file
    File? output_windows
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
      ~{if (ped_file) then "--ped-file" else ""} \
      ~{if (markers_file) then "--markers-file" else ""} \
      ~{if (centromere_file) then "--centromere-file" else ""} \
      ~{if (output_windows) then "--output-windows" else ""} \
      ~{if (ibd_score_threshold) then "--ibd-score-threshold" else ""} \
      ~{if (window_resolution) then "--window-resolution" else ""} \
      ~{if (inheritance) then "--inheritance" else ""} \
      ~{if defined(jar) then ("-jar " +  '"' + jar + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
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
  output {
    File out_stdout = stdout()
    File out_centromere_file = "${in_centromere_file}"
    File out_output_windows = "${in_output_windows}"
  }
}