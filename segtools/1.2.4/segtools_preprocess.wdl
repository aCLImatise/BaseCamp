version 1.0

task SegtoolsPreprocess {
  input {
    Boolean? clobber
    Boolean? quiet
    Boolean? annotation
    String in_file
    String? outfile
  }
  command <<<
    segtools-preprocess \
      ~{in_file} \
      ~{outfile} \
      ~{true="--clobber" false="" clobber} \
      ~{true="--quiet" false="" quiet} \
      ~{true="--annotation" false="" annotation}
  >>>
  parameter_meta {
    clobber: "Overwrite any existing output files."
    quiet: "Do not print diagnostic messages."
    annotation: "Read INFILE as an annotation, rather than as a segmentation (default)."
    in_file: ""
    outfile: ""
  }
}