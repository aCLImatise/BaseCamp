version 1.0

task SNPsplit {
  input {
    Boolean? conflicting_slash_weird
    Boolean? sam
    String? snp_file
  }
  command <<<
    SNPsplit \
      ~{true="--conflicting/--weird" false="" conflicting_slash_weird} \
      ~{true="--sam" false="" sam} \
      ~{if defined(snp_file) then ("--snp_file " +  '"' + snp_file + '"') else ""}
  >>>
  parameter_meta {
    conflicting_slash_weird: "Reads or read pairs that were classified as 'Conflicting' (XX:Z:CF) will be written to an extra file (ending in .conflicting.bam) instead of being simply skipped. Reads may be classified as 'Conflicting' if a single read contains SNP information for both genomes at the same time, or if the SNP position was deleted from the read. Read-pairs are considered 'Conflicting' if either read is was tagged with the XX:Z:CF flag. Default: OFF."
    sam: "The output will be written out in SAM format instead of BAM (default). SNPsplit will attempt to use the path to Samtools that was specified with --samtools_path, or, if it hasn't been specified, attempt to find Samtools in the PATH environment. If no installation of Samtools can be found, the SAM output will be compressed with GZIP instead (yielding a .sam.gz output file)."
    snp_file: ""
  }
}