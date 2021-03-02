version 1.0

task SeqFilters {
  input {
    String? forward_primers
    Int? max_forward
    Int? gene_name
    Int? min_length
    Int? max_ns
    Directory? outdir
    String? result_dir_name
    String? keep_primer
    Int? min_qual
    File? qual_file
    String? reverse_primers
    Int? max_reverse
    File? seq_file
    Boolean? skip_not_ag
    File? tag_file
    Int? max_length
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
      ~{if (skip_not_ag) then "--skip-notag" else ""} \
      ~{if defined(tag_file) then ("--tag-file " +  '"' + tag_file + '"') else ""} \
      ~{if defined(max_length) then ("--max-length " +  '"' + max_length + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    forward_primers: "Comma seperated list of forward primers"
    max_forward: "Maximum forward edit distance (default=2)"
    gene_name: "Gene name, possible values are RRNA16S and\\nOTHER (default=RRNA16S)"
    min_length: "Minimum sequence length after primer triming\\n(default=0)"
    max_ns: "Maxmimum number of Ns allowed in a sequence\\n(default=0)"
    outdir: "Output directory (default=cwd)"
    result_dir_name: "Result dir name (default=result_dir)"
    keep_primer: "Don't trim primers (default=false)"
    min_qual: "Minimum sequence length after primer triming\\n(default=20)"
    qual_file: "Quality input file (default=null)"
    reverse_primers: "Comma seperated list of reverse primers\\n(default=null)"
    max_reverse: "Maximum reverse edit distance (default=0)"
    seq_file: "Sequence file to process"
    skip_not_ag: "Don't process no tag sequences"
    tag_file: "tag-file (default=null, no tag sorting)"
    max_length: "Maximum sequence length after primer triming\\n(default=1000)\\n"
    usage: ""
  }
  output {
    File out_stdout = stdout()
    Directory out_outdir = "${in_outdir}"
  }
}