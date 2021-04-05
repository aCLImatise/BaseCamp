version 1.0

task Zpcacounts {
  input {
    File? counts
    File? lengths
    Int? pseudo_count
    Boolean? filter_not_expressed
    Directory? out
    Boolean? verbose
  }
  command <<<
    zpca_counts \
      ~{if defined(counts) then ("--counts " +  '"' + counts + '"') else ""} \
      ~{if defined(lengths) then ("--lengths " +  '"' + lengths + '"') else ""} \
      ~{if defined(pseudo_count) then ("--pseudocount " +  '"' + pseudo_count + '"') else ""} \
      ~{if (filter_not_expressed) then "--filter-not-expressed" else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/zpca:0.8.2--pyh3252c3a_0"
  }
  parameter_meta {
    counts: "Counts table (tsv). The first column should contain the gene/transcript id. The other columns should contain the counts for each sample."
    lengths: "Table of feature lengths (tsv).\\nThe file can have two types of formats.\\nFirst option: The first column should contain the gene/transcript id.\\nThe second column should contain the corresponding lengths\\nSecond option: The first column should contain the gene/transcript id.\\nThe rest of the columns should contain the gene/transcript lengths for each of the samples\\nNote that the sample names should be the same the sample names of the counts."
    pseudo_count: "Pseudocount to add in the count table. Default: 1"
    filter_not_expressed: "Filter not expressed genes/transcripts (0 counts for all samples)."
    out: "Output directory"
    verbose: "Verbose"
  }
  output {
    File out_stdout = stdout()
    Directory out_out = "${in_out}"
  }
}