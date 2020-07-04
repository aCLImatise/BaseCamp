version 1.0

task Spaln {
  input {
    Boolean? generate_local_table
    Boolean? xc
    Boolean? xg
    Boolean? xk
    Boolean? xb
    Boolean? x_a
    Boolean? xr
    Boolean? gzipped_output
    Boolean? mutlithread_operation_threads
    Boolean? minimum_score_report
    String? ls
    Boolean? number_outputs_query
    Boolean? dp_hspsearch_blocksearch
    Boolean? read_information_file
    Boolean? orientation_annotation_forward
    Boolean? subdirectory_where_reside
    Boolean? specify_aadb_must
    Boolean? same_db_sequences
    Boolean? specify_genome_must
    Boolean? same_d_db
    Boolean? number_characters_line
    Boolean? filedirectoryprefix_where_results
    Boolean? pa
    Boolean? pw
    Boolean? pq
    Boolean? report_information_block
    Boolean? _gapextension_penalty
    Boolean? _gapopen_penalty
    Boolean? band_width_dp
    Boolean? ya
    Boolean? yl_three
    Boolean? ym
    Boolean? yn
    Boolean? yo
    Boolean? yx
    Boolean? yy
    Boolean? weight_coding_potential
    Boolean? yb
    Boolean? yi
    Boolean? yl
    Boolean? ys
    Boolean? yx_zero
    Boolean? weight_intron_potential
    Boolean? var_43
    Boolean? kd
    String? genome_dot_bkn
    String? w_options
    String genome_dot_mfa
  }
  command <<<
    spaln \
      ~{genome_dot_bkn} \
      ~{w_options} \
      ~{genome_dot_mfa} \
      ~{true="-E" false="" generate_local_table} \
      ~{true="-XC" false="" xc} \
      ~{true="-XG" false="" xg} \
      ~{true="-Xk" false="" xk} \
      ~{true="-Xb" false="" xb} \
      ~{true="-Xa" false="" x_a} \
      ~{true="-Xr" false="" xr} \
      ~{true="-g" false="" gzipped_output} \
      ~{true="-t" false="" mutlithread_operation_threads} \
      ~{true="-H" false="" minimum_score_report} \
      ~{if defined(ls) then ("-LS " +  '"' + ls + '"') else ""} \
      ~{true="-M" false="" number_outputs_query} \
      ~{true="-Q" false="" dp_hspsearch_blocksearch} \
      ~{true="-R" false="" read_information_file} \
      ~{true="-S" false="" orientation_annotation_forward} \
      ~{true="-T" false="" subdirectory_where_reside} \
      ~{true="-a" false="" specify_aadb_must} \
      ~{true="-A" false="" same_db_sequences} \
      ~{true="-d" false="" specify_genome_must} \
      ~{true="-D" false="" same_d_db} \
      ~{true="-l" false="" number_characters_line} \
      ~{true="-o" false="" filedirectoryprefix_where_results} \
      ~{true="-pa" false="" pa} \
      ~{true="-pw" false="" pw} \
      ~{true="-pq" false="" pq} \
      ~{true="-r" false="" report_information_block} \
      ~{true="-u" false="" _gapextension_penalty} \
      ~{true="-v" false="" _gapopen_penalty} \
      ~{true="-w" false="" band_width_dp} \
      ~{true="-ya" false="" ya} \
      ~{true="-yl3" false="" yl_three} \
      ~{true="-ym" false="" ym} \
      ~{true="-yn" false="" yn} \
      ~{true="-yo" false="" yo} \
      ~{true="-yx" false="" yx} \
      ~{true="-yy" false="" yy} \
      ~{true="-yz" false="" weight_coding_potential} \
      ~{true="-yB" false="" yb} \
      ~{true="-yI" false="" yi} \
      ~{true="-yL" false="" yl} \
      ~{true="-yS" false="" ys} \
      ~{true="-yX0" false="" yx_zero} \
      ~{true="-yZ" false="" weight_intron_potential} \
      ~{true="-W" false="" var_43} \
      ~{true="-KD" false="" kd}
  >>>
  parameter_meta {
    generate_local_table: "Generate local lookup table for each block"
    xc: "#    number of bit patterns < 6 (1)"
    xg: "#    Maximum expected gene size (inferred from genome|db size)"
    xk: "#    Word size (inferred from genome|db size)"
    xb: "#    Block size (inferred from genome|db size)"
    x_a: "#    Abundance factor (10)"
    xr: "#    Minimum ORF length with -KP (30))"
    gzipped_output: "gzipped output"
    mutlithread_operation_threads: "#     Mutli-thread operation with # threads"
    minimum_score_report: "#     Minimum score for report (35)"
    ls: "#        semi-global or local alignment (-L)"
    number_outputs_query: "#[,#2]        Number of outputs per query (1) (4 if # is omitted) #2 (4) specifies the max number of candidate loci This option is effective only for map-and-align modes"
    dp_hspsearch_blocksearch: "#     0:DP; 1-3:HSP-Search; 4-7; Block-Search (3)"
    read_information_file: "$     Read block information file *.bkn, *.bkp or *.bka"
    orientation_annotation_forward: "#     Orientation. 0:annotation; 1:forward; 2:reverse; 3:both (3)"
    subdirectory_where_reside: "$     Subdirectory where species-specific parameters reside"
    specify_aadb_must: "$     Specify AAdb. Must run `makeidx.pl -ia' breforehand"
    same_db_sequences: "$     Same as -a but db sequences are stored in memory"
    specify_genome_must: "$     Specify genome. Must run `makeidx.pl -i[n|p]' breforehand"
    same_d_db: "$     Same as -d but db sequences are stored in memory"
    number_characters_line: "#     Number of characters per line in alignment (60)"
    filedirectoryprefix_where_results: "$     File/directory/prefix where results are written (stdout)"
    pa: "#    Remove 3' poly A >= # (0: don't remove)"
    pw: "Report results even if the score is below the threshold"
    pq: "Quiet mode"
    report_information_block: "$     Report information about block data file"
    _gapextension_penalty: "#     Gap-extension penalty (3)"
    _gapopen_penalty: "#     Gap-open penalty (8)"
    band_width_dp: "#     Band width for DP matrix scan (100)"
    ya: "#    Stringency of splice site. 0->3:strong->weak"
    yl_three: "Ddouble affine gap penalty"
    ym: "#    Nucleotide match score (2)"
    yn: "#    Nucleotide mismatch score (-6)"
    yo: "#    Penalty for a premature termination codon (100)"
    yx: "#    Penalty for a frame shift error (100)"
    yy: "#    Weight for splice site signal (8)"
    weight_coding_potential: "#    Weight for coding potential (2)"
    yb: "#    Weight for branch point signal (0)"
    yi: "$    Intron length distribution"
    yl: "#    Minimum expected length of intron (30)"
    ys: "[#]  Use species-specific parameter set (0.0/0.5)"
    yx_zero: "Don't use parameter set for cross-species comparison"
    weight_intron_potential: "#    Weight for intron potential (0)"
    var_43: ""
    kd: ""
    genome_dot_bkn: ""
    w_options: ""
    genome_dot_mfa: ""
  }
}