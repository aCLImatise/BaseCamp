version 1.0

task Interleafq {
  input {
    File? output_prefix
    File? first_pair
    File? second_pair
    Boolean? strip_comments
    Boolean? relaxed
    Boolean? force_interleave
    Boolean? verbose
  }
  command <<<
    interleafq \
      ~{if defined(output_prefix) then ("--output-prefix " +  '"' + output_prefix + '"') else ""} \
      ~{if defined(first_pair) then ("--first-pair " +  '"' + first_pair + '"') else ""} \
      ~{if defined(second_pair) then ("--second-pair " +  '"' + second_pair + '"') else ""} \
      ~{if (strip_comments) then "--strip-comments" else ""} \
      ~{if (relaxed) then "--relaxed" else ""} \
      ~{if (force_interleave) then "--force-interleave" else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    output_prefix: "Basename for the output file when deinterleaving. Will produce by\\ndefault \\\"{prefix}_R1.fastq\\\" and \\\"{prefix}_R2.fastq\\\"."
    first_pair: "Filename for the first pair produced when deinterleaving.\\nAlternative to \\\"-o\\\", if the specified output filename ends with\\n'.gz' will print a compressed file."
    second_pair: "Filename for the second pair produced when deinterleaving.\\nAlternative to \\\"-o\\\", if the specified output filename ends with\\n'.gz' will print a compressed file."
    strip_comments: "Will remove comments from the sequence headers (*i. e.* any string\\nafter the first space character in the read name line)."
    relaxed: "Will not check for inconsistencies in read names and\\nsequence/quality length. The read names should be equal until the\\nfirst '/'."
    force_interleave: "When supplying only the first pair-end file it will set interleave\\nmode, looking for a second pair-end file (replacing _R1 with _R2)"
    verbose: "Display additional information (total printed sequences at the end,\\nuseful for truncated files)."
  }
  output {
    File out_stdout = stdout()
    File out_output_prefix = "${in_output_prefix}"
    File out_first_pair = "${in_first_pair}"
    File out_second_pair = "${in_second_pair}"
  }
}