version 1.0

task Bg2bw {
  input {
    Boolean? am_file
    File? outfile
    Boolean? chrom_list
  }
  command <<<
    bg2bw \
      ~{if (am_file) then "--input" else ""} \
      ~{if (outfile) then "--outfile" else ""} \
      ~{if (chrom_list) then "--chromList" else ""}
  >>>
  parameter_meta {
    am_file: "[file]           Path to the input [b|cr]am file."
    outfile: "[file]         Path to the output .bw file produced. [default:'output.bw']"
    chrom_list: "[file]       Path to chrom.list a .tsv where first two columns are contig name and length."
  }
  output {
    File out_stdout = stdout()
    File out_outfile = "${in_outfile}"
  }
}