version 1.0

task Tagore {
  input {
    File? input_bedlike_file
    File? p
    Boolean? b
    Boolean? force
    Boolean? of_mt
    Boolean? verbose
    String? var_output
    File? file
    String? prefix
    Int? hg_seven_eight_slash_hg_three_eight
    String? png_slash_pdf
  }
  command <<<
    tagore \
      ~{var_output} \
      ~{file} \
      ~{prefix} \
      ~{hg_seven_eight_slash_hg_three_eight} \
      ~{png_slash_pdf} \
      ~{if defined(input_bedlike_file) then ("--input " +  '"' + input_bedlike_file + '"') else ""} \
      ~{if (p) then "-p" else ""} \
      ~{if (b) then "-b" else ""} \
      ~{if (force) then "--force" else ""} \
      ~{if (of_mt) then "-ofmt" else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  parameter_meta {
    input_bedlike_file: "Input BED-like file"
    p: "[output file prefix], --prefix [output file prefix]  Output prefix [Default: \\\"out\\\"]"
    b: "[hg78/hg38], --build [hg78/hg38]                     Human genome build to use [Default: hg38]"
    force: "Overwrite output files if they exist already"
    of_mt: "[png/pdf], --oformat [png/pdf]                    Output format for conversion (pdf requires rsvg-convert)"
    verbose: "Display verbose output"
    var_output: ""
    file: ""
    prefix: ""
    hg_seven_eight_slash_hg_three_eight: ""
    png_slash_pdf: ""
  }
  output {
    File out_stdout = stdout()
    File out_p = "${in_p}"
  }
}