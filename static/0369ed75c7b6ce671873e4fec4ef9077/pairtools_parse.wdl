version 1.0

task PairtoolsParse {
  input {
    File? chrom_s_path
    File? output_file_path
    Int? assembly
    Int? min_mapq
    Int? max_molecule_size
    Boolean? drop_read_id
    Boolean? drop_sam
    Int? add_columns
    File? output_parsed_alignments
    File? output_stats
    Int? max_inter_align_gap
    Boolean? walks_policy
    Boolean? no_flip
    Int? nproc_in
    Int? nproc_out
    File? cmd_in
    File? cmd_out
    String _specified_remove
    File file_dot
    String generated_dot
  }
  command <<<
    pairtools parse \
      ~{_specified_remove} \
      ~{file_dot} \
      ~{generated_dot} \
      ~{if defined(chrom_s_path) then ("--chroms-path " +  '"' + chrom_s_path + '"') else ""} \
      ~{if defined(output_file_path) then ("--output " +  '"' + output_file_path + '"') else ""} \
      ~{if defined(assembly) then ("--assembly " +  '"' + assembly + '"') else ""} \
      ~{if defined(min_mapq) then ("--min-mapq " +  '"' + min_mapq + '"') else ""} \
      ~{if defined(max_molecule_size) then ("--max-molecule-size " +  '"' + max_molecule_size + '"') else ""} \
      ~{if (drop_read_id) then "--drop-readid" else ""} \
      ~{if (drop_sam) then "--drop-sam" else ""} \
      ~{if defined(add_columns) then ("--add-columns " +  '"' + add_columns + '"') else ""} \
      ~{if defined(output_parsed_alignments) then ("--output-parsed-alignments " +  '"' + output_parsed_alignments + '"') else ""} \
      ~{if defined(output_stats) then ("--output-stats " +  '"' + output_stats + '"') else ""} \
      ~{if defined(max_inter_align_gap) then ("--max-inter-align-gap " +  '"' + max_inter_align_gap + '"') else ""} \
      ~{if (walks_policy) then "--walks-policy" else ""} \
      ~{if (no_flip) then "--no-flip" else ""} \
      ~{if defined(nproc_in) then ("--nproc-in " +  '"' + nproc_in + '"') else ""} \
      ~{if defined(nproc_out) then ("--nproc-out " +  '"' + nproc_out + '"') else ""} \
      ~{if defined(cmd_in) then ("--cmd-in " +  '"' + cmd_in + '"') else ""} \
      ~{if defined(cmd_out) then ("--cmd-out " +  '"' + cmd_out + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    chrom_s_path: "Chromosome order used to flip\\ninterchromosomal mates: path to a\\nchromosomes file (e.g. UCSC chrom.sizes or\\nsimilar) whose first column lists scaffold\\nnames. Any scaffolds not listed will be\\nordered lexicographically following the\\nnames provided.  [required]"
    output_file_path: "output file.  If the path ends with .gz or\\n.lz4, the output is\\npbgzip-/lz4-compressed.By default, the\\noutput is printed into stdout."
    assembly: "Name of genome assembly (e.g. hg19, mm10) to\\nstore in the pairs header."
    min_mapq: "The minimal MAPQ score to consider a read as\\nuniquely mapped  [default: 1]"
    max_molecule_size: "The maximal size of a Hi-C molecule; used to\\nrescue single ligationsfrom molecules with\\nthree alignments.  [default: 2000]"
    drop_read_id: "If specified, do not add read ids to the"
    drop_sam: "If specified, do not add sams to the output"
    add_columns: "Report extra columns describing alignments\\nPossible values (can take multiple values as\\na comma-separated list): a SAM tag (any pair\\nof uppercase letters) or mapq, pos5, pos3,\\ncigar, read_len, matched_bp, algn_ref_span,\\nalgn_read_span, dist_to_5, dist_to_3, seq."
    output_parsed_alignments: "output file for all parsed alignments,\\nincluding walks. Useful for debugging and\\nrnalysis of walks. If file exists, it will\\nbe open in the append mode. If the path ends\\nwith .gz or .lz4, the output is\\npbgzip-/lz4-compressed. By default, not\\nused."
    output_stats: "output file for various statistics of pairs"
    max_inter_align_gap: "read segments that are not covered by any\\nalignment and longer than the specified\\nvalue are treated as \\\"null\\\" alignments.\\nThese null alignments convert otherwise\\nlinear alignments into walks, and affect how\\nthey get reported as a Hi-C pair (see\\n--walks-policy).  [default: 20]"
    walks_policy: "[mask|all|5any|5unique|3any|3unique]\\nthe policy for reporting unrescuable walks\\n(reads containing more than one alignment on\\none or both sides, that can not be explained\\nby a single ligation between two mappable\\nDNA fragments). \\\"mask\\\" - mask walks\\n(chrom=\\\"!\\\", pos=0, strand=\\\"-\\\");  \\\"all\\\" -\\nreport all pairs of consecutive alignments\\n[NOT IMPLEMENTED];  \\\"5any\\\" - report the\\n5'-most alignment on each side; \\\"5unique\\\" -\\nreport the 5'-most unique alignment on each\\nside, if present; \\\"3any\\\" - report the\\n3'-most alignment on each side; \\\"3unique\\\" -\\nreport the 3'-most unique alignment on each\\nside, if present.  [default: mask]"
    no_flip: "If specified, do not flip pairs in genomic\\norder and instead preserve the order in\\nwhich they were sequenced."
    nproc_in: "Number of processes used by the auto-guessed\\ninput decompressing command.  [default: 3]"
    nproc_out: "Number of processes used by the auto-guessed\\noutput compressing command.  [default: 8]"
    cmd_in: "A command to decompress the input file. If\\nprovided, fully overrides the auto-guessed\\ncommand. Does not work with stdin. Must read\\ninput from stdin and print output into\\nstdout. EXAMPLE: pbgzip -dc -n 3"
    cmd_out: "A command to compress the output file. If\\nprovided, fully overrides the auto-guessed\\ncommand. Does not work with stdout. Must\\nread input from stdin and print output into\\nstdout. EXAMPLE: pbgzip -c -n 8"
    _specified_remove: "--drop-seq                      If specified, remove sequences and PHREDs"
    file_dot: "By default, statistics is not"
    generated_dot: "--report-alignment-end [5|3]    specifies whether the 5' or 3' end of the"
  }
  output {
    File out_stdout = stdout()
    File out_output_file_path = "${in_output_file_path}"
    File out_output_parsed_alignments = "${in_output_parsed_alignments}"
    File out_output_stats = "${in_output_stats}"
  }
}