version 1.0

task Tcode {
  input {
    Boolean? window
    Boolean? data_file
    Boolean? step
    Boolean? plot
  }
  command <<<
    tcode \
      ~{if (window) then "-window" else ""} \
      ~{if (data_file) then "-datafile" else ""} \
      ~{if (step) then "-step" else ""} \
      ~{if (plot) then "-plot" else ""}
  >>>
  parameter_meta {
    window: "integer    [200] This is the number of nucleotide bases\\nover which the TESTCODE statistic will be\\nperformed each time. The window will then\\nslide along the sequence, covering the same\\nnumber of bases each time. (Integer 200 or\\nmore)"
    data_file: "datafile   [Etcode.dat] The default data file is\\nEtcode.dat and contains coding probabilities\\nfor each base. The probabilities are for\\nboth positional and compositional\\ninformation."
    step: "integer    [3] The selected window will, by default,\\nslide along the nucleotide sequence by three\\nbases at a time, retaining the frame\\n(although the algorithm is not frame\\nsensitive). This may be altered to increase\\nor decrease the increment of the slide.\\n(Integer 1 or more)"
    plot: "toggle     [N] On selection a graph of the sequence (X\\naxis) plotted against the coding score (Y\\naxis) will be displayed. Sequence above the\\ngreen line is coding, that below the red\\nline is non-coding."
  }
  output {
    File out_stdout = stdout()
  }
}