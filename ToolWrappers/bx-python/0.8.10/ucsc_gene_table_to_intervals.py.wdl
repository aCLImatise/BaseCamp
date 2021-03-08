version 1.0

task UcscGeneTableToIntervalspy {
  input {
    Int? region
    Boolean? exons
    Boolean? strand
    Boolean? no_bin
  }
  command <<<
    ucsc_gene_table_to_intervals_py \
      ~{if defined(region) then ("--region " +  '"' + region + '"') else ""} \
      ~{if (exons) then "--exons" else ""} \
      ~{if (strand) then "--strand" else ""} \
      ~{if (no_bin) then "--nobin" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/bx-python:0.8.10--py36h5e0341f_0"
  }
  parameter_meta {
    region: "Limit to region: one of coding, utr3, utr5,\\ntranscribed [default]"
    exons: "Only print intervals overlapping an exon"
    strand: "Print strand after interval"
    no_bin: "file doesn't contain a 'bin' column (use this for pre-\\nhg18 files)\\n"
  }
  output {
    File out_stdout = stdout()
  }
}