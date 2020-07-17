version 1.0

task SeqFilters {
  input {
    String? forward_primers
    String? max_forward
    String? gene_name
    String? min_length
    String? max_ns
    String? outdir
    String? result_dir_name
    String? keep_primer
    String? min_qual
    String? qual_file
    String? reverse_primers
    String? max_reverse
    String? seq_file
    Boolean? skip_not_ag
    String? tag_file
    String? max_length
    String usage
  }
  command <<<
    SeqFilters \
      ~{usage} \
      ~{if defined(forward_primers) then ("--forward-primers " +  '"' + forward_primers + '"') else ""} \
      ~{if defined(max_forward) then ("--max-forward " +  '"' + max_forward + '"') else ""} \
      ~{if defined(gene_name) then ("--gene-name " +  '"' + gene_name + '"') else ""} \
      ~{if defined(min_length) then ("--min-length " +  '"' + min_length + '"') else ""} \
      ~{if defined(max_ns) then ("--max-ns " +  '"' + max_ns + '"') else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if defined(result_dir_name) then ("--result-dir-name " +  '"' + result_dir_name + '"') else ""} \
      ~{if defined(keep_primer) then ("--keep-primer " +  '"' + keep_primer + '"') else ""} \
      ~{if defined(min_qual) then ("--min-qual " +  '"' + min_qual + '"') else ""} \
      ~{if defined(qual_file) then ("--qual-file " +  '"' + qual_file + '"') else ""} \
      ~{if defined(reverse_primers) then ("--reverse-primers " +  '"' + reverse_primers + '"') else ""} \
      ~{if defined(max_reverse) then ("--max-reverse " +  '"' + max_reverse + '"') else ""} \
      ~{if defined(seq_file) then ("--seq-file " +  '"' + seq_file + '"') else ""} \
      ~{true="--skip-notag" false="" skip_not_ag} \
      ~{if defined(tag_file) then ("--tag-file " +  '"' + tag_file + '"') else ""} \
      ~{if defined(max_length) then ("--max-length " +  '"' + max_length + '"') else ""}
  >>>
  parameter_meta {
    forward_primers: "Comma seperated list of forward primers"
    max_forward: "Maximum forward edit distance (default=2)"
    gene_name: "Gene name, possible values are RRNA16S and OTHER (default=RRNA16S)"
    min_length: "Minimum sequence length after primer triming (default=0)"
    max_ns: "Maxmimum number of Ns allowed in a sequence (default=0)"
    outdir: "Output directory (default=cwd)"
    result_dir_name: "Result dir name (default=result_dir)"
    keep_primer: "Don't trim primers (default=false)"
    min_qual: "Minimum sequence length after primer triming (default=20)"
    qual_file: "Quality input file (default=null)"
    reverse_primers: "Comma seperated list of reverse primers (default=null)"
    max_reverse: "Maximum reverse edit distance (default=0)"
    seq_file: "Sequence file to process"
    skip_not_ag: "Don't process no tag sequences"
    tag_file: "tag-file (default=null, no tag sorting)"
    max_length: "Maximum sequence length after primer triming (default=1000)"
    usage: ""
  }
}