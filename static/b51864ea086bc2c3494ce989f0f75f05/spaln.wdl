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
    Boolean? number_outputs_omitted
    Boolean? gvsac_gffgene_alignment
    Boolean? dp_hspsearch_blocksearch
    Boolean? read_block_file
    Boolean? orientation_annotation_forward
    Boolean? subdirectory_where_reside
    Boolean? specify_aadb_run
    Boolean? same_db_sequences
    Boolean? specify_genome_run
    Boolean? same_d_db
    Boolean? number_characters_line
    Boolean? filedirectoryprefix_where_written
    Boolean? pa
    Boolean? pw
    Boolean? pq
    Boolean? report_information_block
    Boolean? _gapextension_penalty
    Boolean? _gapopen_penalty
    Boolean? band_width_scan
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
    Boolean? kd
    Boolean? var_45
    String? genome_dot_bkn
    String? w_options
    String genome_dot_mfa
  }
  command <<<
    spaln \
      ~{genome_dot_bkn} \
      ~{w_options} \
      ~{genome_dot_mfa} \
      ~{if (generate_local_table) then "-E" else ""} \
      ~{if (xc) then "-XC" else ""} \
      ~{if (xg) then "-XG" else ""} \
      ~{if (xk) then "-Xk" else ""} \
      ~{if (xb) then "-Xb" else ""} \
      ~{if (x_a) then "-Xa" else ""} \
      ~{if (xr) then "-Xr" else ""} \
      ~{if (gzipped_output) then "-g" else ""} \
      ~{if (mutlithread_operation_threads) then "-t" else ""} \
      ~{if (minimum_score_report) then "-H" else ""} \
      ~{if defined(ls) then ("-LS " +  '"' + ls + '"') else ""} \
      ~{if (number_outputs_omitted) then "-M" else ""} \
      ~{if (gvsac_gffgene_alignment) then "-O" else ""} \
      ~{if (dp_hspsearch_blocksearch) then "-Q" else ""} \
      ~{if (read_block_file) then "-R" else ""} \
      ~{if (orientation_annotation_forward) then "-S" else ""} \
      ~{if (subdirectory_where_reside) then "-T" else ""} \
      ~{if (specify_aadb_run) then "-a" else ""} \
      ~{if (same_db_sequences) then "-A" else ""} \
      ~{if (specify_genome_run) then "-d" else ""} \
      ~{if (same_d_db) then "-D" else ""} \
      ~{if (number_characters_line) then "-l" else ""} \
      ~{if (filedirectoryprefix_where_written) then "-o" else ""} \
      ~{if (pa) then "-pa" else ""} \
      ~{if (pw) then "-pw" else ""} \
      ~{if (pq) then "-pq" else ""} \
      ~{if (report_information_block) then "-r" else ""} \
      ~{if (_gapextension_penalty) then "-u" else ""} \
      ~{if (_gapopen_penalty) then "-v" else ""} \
      ~{if (band_width_scan) then "-w" else ""} \
      ~{if (ya) then "-ya" else ""} \
      ~{if (yl_three) then "-yl3" else ""} \
      ~{if (ym) then "-ym" else ""} \
      ~{if (yn) then "-yn" else ""} \
      ~{if (yo) then "-yo" else ""} \
      ~{if (yx) then "-yx" else ""} \
      ~{if (yy) then "-yy" else ""} \
      ~{if (weight_coding_potential) then "-yz" else ""} \
      ~{if (yb) then "-yB" else ""} \
      ~{if (yi) then "-yI" else ""} \
      ~{if (yl) then "-yL" else ""} \
      ~{if (ys) then "-yS" else ""} \
      ~{if (yx_zero) then "-yX0" else ""} \
      ~{if (weight_intron_potential) then "-yZ" else ""} \
      ~{if (kd) then "-KD" else ""} \
      ~{if (var_45) then "-W" else ""}
  >>>
  runtime {
    docker: "None"
  }
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
    number_outputs_omitted: "#[,#2]        Number of outputs per query (1) (4 if # is omitted)\\n#2 (4) specifies the max number of candidate loci\\nThis option is effective only for map-and-align modes"
    gvsac_gffgene_alignment: "#[,#2,..] (GvsA|C)    0:Gff3_gene; 1:alignment; 2:Gff3_match; 3:Bed; 4:exon-inf;\\n5:intron-inf; 6:cDNA; 7:translated; 8:block-only;\\n10:SAM; 12:binary; 15:query+GS (4)"
    dp_hspsearch_blocksearch: "#     0:DP; 1-3:HSP-Search; 4-7; Block-Search (3)"
    read_block_file: "$     Read block information file *.bkn, *.bkp or *.bka"
    orientation_annotation_forward: "#     Orientation. 0:annotation; 1:forward; 2:reverse; 3:both (3)"
    subdirectory_where_reside: "$     Subdirectory where species-specific parameters reside"
    specify_aadb_run: "$     Specify AAdb. Must run `makeidx.pl -ia' breforehand"
    same_db_sequences: "$     Same as -a but db sequences are stored in memory"
    specify_genome_run: "$     Specify genome. Must run `makeidx.pl -i[n|p]' breforehand"
    same_d_db: "$     Same as -d but db sequences are stored in memory"
    number_characters_line: "#     Number of characters per line in alignment (60)"
    filedirectoryprefix_where_written: "$     File/directory/prefix where results are written (stdout)"
    pa: "#    Remove 3' poly A >= # (0: don't remove)"
    pw: "Report results even if the score is below the threshold"
    pq: "Quiet mode"
    report_information_block: "$     Report information about block data file"
    _gapextension_penalty: "#     Gap-extension penalty (3)"
    _gapopen_penalty: "#     Gap-open penalty (8)"
    band_width_scan: "#     Band width for DP matrix scan (100)"
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
    kd: ""
    var_45: ""
    genome_dot_bkn: ""
    w_options: ""
    genome_dot_mfa: ""
  }
  output {
    File out_stdout = stdout()
  }
}