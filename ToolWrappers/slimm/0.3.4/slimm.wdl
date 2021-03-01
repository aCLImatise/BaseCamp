version 1.0

task Slimm {
  input {
    Boolean? version_check
    File? output_prefix
    Int? bin_width
    Int? min_reads
    String? rank
    Float? cov_cut_off
    Float? abundance_cut_off
    Boolean? directory
    Boolean? raw_output
    Boolean? coverage_output
    Boolean? verbose
    String see
  }
  command <<<
    slimm \
      ~{see} \
      ~{if defined(version_check) then ("--version-check " +  '"' + version_check + '"') else ""} \
      ~{if defined(output_prefix) then ("--output-prefix " +  '"' + output_prefix + '"') else ""} \
      ~{if defined(bin_width) then ("--bin-width " +  '"' + bin_width + '"') else ""} \
      ~{if defined(min_reads) then ("--min-reads " +  '"' + min_reads + '"') else ""} \
      ~{if defined(rank) then ("--rank " +  '"' + rank + '"') else ""} \
      ~{if defined(cov_cut_off) then ("--cov-cut-off " +  '"' + cov_cut_off + '"') else ""} \
      ~{if defined(abundance_cut_off) then ("--abundance-cut-off " +  '"' + abundance_cut_off + '"') else ""} \
      ~{if (directory) then "--directory" else ""} \
      ~{if (raw_output) then "--raw-output" else ""} \
      ~{if (coverage_output) then "--coverage-output" else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    version_check: "Turn this option off to disable version update notifications of the\\napplication. One of 1, ON, TRUE, T, YES, 0, OFF, FALSE, F, and NO.\\nDefault: 1."
    output_prefix: "output path prefix."
    bin_width: "Set the width of a single bin in neuclotides. Default: 0."
    min_reads: "Minimum number of matching reads to consider a reference present.\\nDefault: 0."
    rank: "The taxonomic rank of identification One of strains, species, genus,\\nfamily, order, class, phylum, and superkingdom. Default: species."
    cov_cut_off: "the quantile of coverages to use as a cutoff smaller value means\\nbigger threshold. In range [0.0..1.0]. Default: 0.95."
    abundance_cut_off: "do not report abundances below this value In range [0.0..10.0].\\nDefault: 0.01."
    directory: "Input is a directory."
    raw_output: "Output raw reference statstics"
    coverage_output: "Output raw coverage statstics"
    verbose: "Enable verbose output."
    see: "http://www.seqan.de/projects/slimm  for more information."
  }
  output {
    File out_stdout = stdout()
    File out_output_prefix = "${in_output_prefix}"
  }
}