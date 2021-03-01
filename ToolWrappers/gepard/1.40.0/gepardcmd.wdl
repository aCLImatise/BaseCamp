version 1.0

task Gepardcmd {
  input {
    Boolean? seq_one
    Boolean? seq_two
    Boolean? matrix
    File? outfile
    Boolean? maxwidth
    Boolean? max_height
    Boolean? zoom
    Boolean? format
    Boolean? second_comp
    Boolean? word
    Boolean? window
    Boolean? sa_file
    Boolean? sa_second_seq
    Boolean? from_one
    Boolean? from_two
    Boolean? lower
    Boolean? upper
    Boolean? greyscale
    Boolean? silent
  }
  command <<<
    gepardcmd \
      ~{if (seq_one) then "-seq1" else ""} \
      ~{if (seq_two) then "-seq2" else ""} \
      ~{if (matrix) then "-matrix" else ""} \
      ~{if (outfile) then "-outfile" else ""} \
      ~{if (maxwidth) then "-maxwidth" else ""} \
      ~{if (max_height) then "-maxheight" else ""} \
      ~{if (zoom) then "-zoom" else ""} \
      ~{if (format) then "-format" else ""} \
      ~{if (second_comp) then "-secondcomp" else ""} \
      ~{if (word) then "-word" else ""} \
      ~{if (window) then "-window" else ""} \
      ~{if (sa_file) then "-safile" else ""} \
      ~{if (sa_second_seq) then "-sasecondseq" else ""} \
      ~{if (from_one) then "-from1" else ""} \
      ~{if (from_two) then "-from2" else ""} \
      ~{if (lower) then "-lower" else ""} \
      ~{if (upper) then "-upper" else ""} \
      ~{if (greyscale) then "-greyscale" else ""} \
      ~{if (silent) then "-silent" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    seq_one: ":        first sequence file"
    seq_two: ":        second sequence file"
    matrix: ":      substitution matrix file"
    outfile: ":     output file name"
    maxwidth: ":    maximum width of the generated image (default: 750)"
    max_height: ":   maximum height of the generated image (default: 750)"
    zoom: ":        specify a zoom factor for the dotplot"
    format: ":      output format, one of:  'png', 'jpg', 'bmp' (default:PNG)"
    second_comp: "use complementary of second sequence"
    word: ":        word length for suffix array mode (default: 10)"
    window: ":      window size for ordinary dotplot mode (default: 0)"
    sa_file: "load suffix array from file instead of calculating it"
    sa_second_seq: "the suffix array is for the second sequence"
    from_one: "coordinates of first sequence"
    from_two: "coordinates of second sequence"
    lower: "lower limit for dot intensity (in %)"
    upper: "upper limit for dot intensity (in %)"
    greyscale: "greyscale start value (in %)"
    silent: "generate no output (except error messages)"
  }
  output {
    File out_stdout = stdout()
    File out_outfile = "${in_outfile}"
  }
}