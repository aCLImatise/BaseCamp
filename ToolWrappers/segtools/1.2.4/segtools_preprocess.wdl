version 1.0

task Segtoolspreprocess {
  input {
    Boolean? clobber
    Boolean? quiet
    Boolean? annotation
    String in_file
    String? outfile
  }
  command <<<
    segtools_preprocess \
      ~{in_file} \
      ~{outfile} \
      ~{if (clobber) then "--clobber" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (annotation) then "--annotation" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    clobber: "Overwrite any existing output files."
    quiet: "Do not print diagnostic messages."
    annotation: "Read INFILE as an annotation, rather than as a segmentation\\n(default).\\n"
    in_file: ""
    outfile: ""
  }
  output {
    File out_stdout = stdout()
  }
}