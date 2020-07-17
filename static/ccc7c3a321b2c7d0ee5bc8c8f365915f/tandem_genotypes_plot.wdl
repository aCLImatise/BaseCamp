version 1.0

task TandemGenotypesPlot {
  input {
    String? rows
    String? cols
    String? num
    String? sample
    String? pointsize
    File? reads
    Boolean? verbose
    String tandem_genotypes_dot_txt
    String? output_dot_pdf
  }
  command <<<
    tandem-genotypes-plot \
      ~{tandem_genotypes_dot_txt} \
      ~{output_dot_pdf} \
      ~{if defined(rows) then ("--rows " +  '"' + rows + '"') else ""} \
      ~{if defined(cols) then ("--cols " +  '"' + cols + '"') else ""} \
      ~{if defined(num) then ("--num " +  '"' + num + '"') else ""} \
      ~{if defined(sample) then ("--sample " +  '"' + sample + '"') else ""} \
      ~{if defined(pointsize) then ("--pointsize " +  '"' + pointsize + '"') else ""} \
      ~{if defined(reads) then ("--reads " +  '"' + reads + '"') else ""} \
      ~{true="--verbose" false="" verbose}
  >>>
  parameter_meta {
    rows: "arrange the graphs in this many rows (default=4)"
    cols: "arrange the graphs in this many columns (default=4)"
    num: "graph the top NUM repeat regions (default=ROWS*COLS)"
    sample: "select SAMPLE-th sample to plot (default=1)"
    pointsize: "text size (default=8)"
    reads: "show expected coverage for FASTA or FASTQ reads"
    verbose: "show more details"
    tandem_genotypes_dot_txt: ""
    output_dot_pdf: ""
  }
}