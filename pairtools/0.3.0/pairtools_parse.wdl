version 1.0

task PairtoolsParse {
  input {
    String? chrom_s_path
    String? output_file_path
    String? assembly
    Int? min_mapq
    Int? max_molecule_size
    Boolean? drop_read_id
    Boolean? drop_seq
    Boolean? drop_sam
    String? add_columns
    String? output_parsed_alignments
    String? output_stats
    Boolean? report_alignment_end
    Int? max_inter_align_gap
    Boolean? walks_policy
    Boolean? no_flip
    Int? nproc_in
    Int? nproc_out
    String? cmd_in
    String? cmd_out
    String? sam_path
  }
  command <<<
    pairtools parse \
      ~{sam_path} \
      ~{if defined(chrom_s_path) then ("--chroms-path " +  '"' + chrom_s_path + '"') else ""} \
      ~{if defined(output_file_path) then ("--output " +  '"' + output_file_path + '"') else ""} \
      ~{if defined(assembly) then ("--assembly " +  '"' + assembly + '"') else ""} \
      ~{if defined(min_mapq) then ("--min-mapq " +  '"' + min_mapq + '"') else ""} \
      ~{if defined(max_molecule_size) then ("--max-molecule-size " +  '"' + max_molecule_size + '"') else ""} \
      ~{true="--drop-readid" false="" drop_read_id} \
      ~{true="--drop-seq" false="" drop_seq} \
      ~{true="--drop-sam" false="" drop_sam} \
      ~{if defined(add_columns) then ("--add-columns " +  '"' + add_columns + '"') else ""} \
      ~{if defined(output_parsed_alignments) then ("--output-parsed-alignments " +  '"' + output_parsed_alignments + '"') else ""} \
      ~{if defined(output_stats) then ("--output-stats " +  '"' + output_stats + '"') else ""} \
      ~{true="--report-alignment-end" false="" report_alignment_end} \
      ~{if defined(max_inter_align_gap) then ("--max-inter-align-gap " +  '"' + max_inter_align_gap + '"') else ""} \
      ~{true="--walks-policy" false="" walks_policy} \
      ~{true="--no-flip" false="" no_flip} \
      ~{if defined(nproc_in) then ("--nproc-in " +  '"' + nproc_in + '"') else ""} \
      ~{if defined(nproc_out) then ("--nproc-out " +  '"' + nproc_out + '"') else ""} \
      ~{if defined(cmd_in) then ("--cmd-in " +  '"' + cmd_in + '"') else ""} \
      ~{if defined(cmd_out) then ("--cmd-out " +  '"' + cmd_out + '"') else ""}
  >>>
  parameter_meta {
    chrom_s_path: "Chromosome order used to flip interchromosomal mates: path to a chromosomes file (e.g. UCSC chrom.sizes or similar) whose first column lists scaffold names. Any scaffolds not listed will be ordered lexicographically following the names provided.  [required]"
    output_file_path: "output file.  If the path ends with .gz or .lz4, the output is pbgzip-/lz4-compressed.By default, the output is printed into stdout."
    assembly: "Name of genome assembly (e.g. hg19, mm10) to store in the pairs header."
    min_mapq: "The minimal MAPQ score to consider a read as uniquely mapped  [default: 1]"
    max_molecule_size: "The maximal size of a Hi-C molecule; used to rescue single ligationsfrom molecules with three alignments.  [default: 2000]"
    drop_read_id: "If specified, do not add read ids to the output"
    drop_seq: "If specified, remove sequences and PHREDs from the sam fields"
    drop_sam: "If specified, do not add sams to the output"
    add_columns: "Report extra columns describing alignments Possible values (can take multiple values as a comma-separated list): a SAM tag (any pair of uppercase letters) or mapq, pos5, pos3, cigar, read_len, matched_bp, algn_ref_span, algn_read_span, dist_to_5, dist_to_3, seq."
    output_parsed_alignments: "output file for all parsed alignments, including walks. Useful for debugging and rnalysis of walks. If file exists, it will be open in the append mode. If the path ends with .gz or .lz4, the output is pbgzip-/lz4-compressed. By default, not used."
    output_stats: "output file for various statistics of pairs file.  By default, statistics is not generated."
    report_alignment_end: "[5|3]    specifies whether the 5' or 3' end of the alignment is reported as the position of the Hi-C read."
    max_inter_align_gap: "read segments that are not covered by any alignment and longer than the specified value are treated as \"null\" alignments. These null alignments convert otherwise linear alignments into walks, and affect how they get reported as a Hi-C pair (see --walks-policy).  [default: 20]"
    walks_policy: "[mask|all|5any|5unique|3any|3unique] the policy for reporting unrescuable walks (reads containing more than one alignment on one or both sides, that can not be explained by a single ligation between two mappable DNA fragments). \"mask\" - mask walks (chrom=\"!\", pos=0, strand=\"-\");  \"all\" - report all pairs of consecutive alignments [NOT IMPLEMENTED];  \"5any\" - report the 5'-most alignment on each side; \"5unique\" - report the 5'-most unique alignment on each side, if present; \"3any\" - report the 3'-most alignment on each side; \"3unique\" - report the 3'-most unique alignment on each side, if present.  [default: mask]"
    no_flip: "If specified, do not flip pairs in genomic order and instead preserve the order in which they were sequenced."
    nproc_in: "Number of processes used by the auto-guessed input decompressing command.  [default: 3]"
    nproc_out: "Number of processes used by the auto-guessed output compressing command.  [default: 8]"
    cmd_in: "A command to decompress the input file. If provided, fully overrides the auto-guessed command. Does not work with stdin. Must read input from stdin and print output into stdout. EXAMPLE: pbgzip -dc -n 3"
    cmd_out: "A command to compress the output file. If provided, fully overrides the auto-guessed command. Does not work with stdout. Must read input from stdin and print output into stdout. EXAMPLE: pbgzip -c -n 8"
    sam_path: ""
  }
}