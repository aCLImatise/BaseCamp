version 1.0

task MimoddVarcall {
  input {
    File? index_files
    File? ofile
    Boolean? group_by_id
    Boolean? relaxed
    Int? max_depth
    Boolean? quiet
    Boolean? verbose
    Int? threads
    String reference_genome
  }
  command <<<
    mimodd varcall \
      ~{reference_genome} \
      ~{if defined(index_files) then ("--index-files " +  '"' + index_files + '"') else ""} \
      ~{if defined(ofile) then ("--ofile " +  '"' + ofile + '"') else ""} \
      ~{if (group_by_id) then "--group-by-id" else ""} \
      ~{if (relaxed) then "--relaxed" else ""} \
      ~{if defined(max_depth) then ("--max-depth " +  '"' + max_depth + '"') else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  parameter_meta {
    index_files: "FILE [INDEX FILE ...]\\npre-computed index files for all input files"
    ofile: "redirect the output (variant sites) to the specified\\nfile (default: stdout)"
    group_by_id: "optional flag to control handling of multi-sample\\ninput; if enabled, reads from different read groups\\nare analyzed as separate samples even if the sample\\nnames associated with the read groups are identical;\\notherwise, the samtools default is used (reads are\\ngrouped based on the sample names of their read\\ngroups)"
    relaxed: "turn off md5 checksum comparison between sequences in\\nthe reference genome and those specified in the BAM\\ninput file header(s)"
    max_depth: "average sample depth cap applied to input with\\nextraordinarily large numbers of samples sequenced at\\nhigh coverage to limit memory usage (default: 250)"
    quiet: "suppress original messages from samtools mpileup and\\nbcftools call"
    verbose: "verbose output independent of samtools/bcftools"
    threads: "the number of threads to use (overrides config\\nsetting)\\n"
    reference_genome: "the reference genome (in fasta format)"
  }
  output {
    File out_stdout = stdout()
    File out_ofile = "${in_ofile}"
  }
}