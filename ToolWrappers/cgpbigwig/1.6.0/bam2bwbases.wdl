version 1.0

task Bam2bwbases {
  input {
    Boolean? am_file
    Boolean? filter
    Boolean? filter_include
    Boolean? region
    Boolean? reference
    Boolean? overlap
    String? o
    String? b_vertical_line_cr
    String am
  }
  command <<<
    bam2bwbases \
      ~{b_vertical_line_cr} \
      ~{am} \
      ~{if (am_file) then "--input" else ""} \
      ~{if (filter) then "--filter" else ""} \
      ~{if (filter_include) then "--filter-include" else ""} \
      ~{if (region) then "--region" else ""} \
      ~{if (reference) then "--reference" else ""} \
      ~{if (overlap) then "--overlap" else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/cgpbigwig:1.6.0--h93d22ca_0"
  }
  parameter_meta {
    am_file: "[file]                                Path to the input [b|cr]am file."
    filter: "[int]                                SAM flags to filter. [default: 4]"
    filter_include: "[int]                        SAM flags to include. [default: 0]\\nN.B. if properly paired reads are filtered for inclusion bam2bw will assume paired-end data\\nand exclude any proper-pair flagged reads not in F/R orientation.-o  --outfile [file]                              Path to the output .bw file produced. Per base results will be output as four bw files [ACGT].outputname.bw [default:'(null)']"
    region: "[file]                               A samtools style region (contig:start-stop) or a bed file of regions over which to produce the bigwig file"
    reference: "[file]                            Path to reference genome.fa file (required for cram if ref_path cannot be resolved)"
    overlap: "Use overlapping read check"
    o: ""
    b_vertical_line_cr: ""
    am: ""
  }
  output {
    File out_stdout = stdout()
  }
}