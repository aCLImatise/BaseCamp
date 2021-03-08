version 1.0

task Tandemgenotypesplot {
  input {
    Int? rows
    Int? cols
    Int? num
    Int? sample
    Int? pointsize
    File? reads
    Boolean? verbose
    String tandem_genotypes_dot_txt
    String? output_dot_pdf
  }
  command <<<
    tandem_genotypes_plot \
      ~{tandem_genotypes_dot_txt} \
      ~{output_dot_pdf} \
      ~{if defined(rows) then ("--rows " +  '"' + rows + '"') else ""} \
      ~{if defined(cols) then ("--cols " +  '"' + cols + '"') else ""} \
      ~{if defined(num) then ("--num " +  '"' + num + '"') else ""} \
      ~{if defined(sample) then ("--sample " +  '"' + sample + '"') else ""} \
      ~{if defined(pointsize) then ("--pointsize " +  '"' + pointsize + '"') else ""} \
      ~{if defined(reads) then ("--reads " +  '"' + reads + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/tandem-genotypes:1.8.1--pyh3252c3a_0"
  }
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
  output {
    File out_stdout = stdout()
  }
}