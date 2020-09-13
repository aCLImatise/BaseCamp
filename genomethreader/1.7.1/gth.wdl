version 1.0

task Gth {
  input {
    Boolean? genomic
    Boolean? cdna
    Boolean? protein
    Boolean? species
    Boolean? b_ssm
    Boolean? score_matrix
    Int? translation_table
    Boolean? analyze_only_forward
    Boolean? analyze_only_strand
    Boolean? cdna_forward
    Boolean? from_pos
    Boolean? topos
    Boolean? width
    Boolean? be_verbosedefault_no
    Boolean? xml_out
    Boolean? gff_three_out
    Boolean? md_five_ids
    File? redirect_output_specified
    File? gzip
    File? bzip_two
    File? force
    Boolean? gs_two_out
    Boolean? min_match_len
    Boolean? seed_length
    Boolean? ex_drop
    Boolean? prm_in_match_len
    Boolean? pr_seed_length
    Boolean? prh_dist
    Boolean? gc_max_gap_width
    Boolean? gcm_in_coverage
    Boolean? paralogs
    Boolean? intron_cut_out
    Boolean? fast_dp
    Int? auto_intron_cut_out
    Boolean? intermediate
    Boolean? first
    Boolean? version
  }
  command <<<
    gth \
      ~{if (genomic) then "-genomic" else ""} \
      ~{if (cdna) then "-cdna" else ""} \
      ~{if (protein) then "-protein" else ""} \
      ~{if (species) then "-species" else ""} \
      ~{if (b_ssm) then "-bssm" else ""} \
      ~{if (score_matrix) then "-scorematrix" else ""} \
      ~{if defined(translation_table) then ("-translationtable " +  '"' + translation_table + '"') else ""} \
      ~{if (analyze_only_forward) then "-f" else ""} \
      ~{if (analyze_only_strand) then "-r" else ""} \
      ~{if (cdna_forward) then "-cdnaforward" else ""} \
      ~{if (from_pos) then "-frompos" else ""} \
      ~{if (topos) then "-topos" else ""} \
      ~{if (width) then "-width" else ""} \
      ~{if (be_verbosedefault_no) then "-v" else ""} \
      ~{if (xml_out) then "-xmlout" else ""} \
      ~{if (gff_three_out) then "-gff3out" else ""} \
      ~{if (md_five_ids) then "-md5ids" else ""} \
      ~{if (redirect_output_specified) then "-o" else ""} \
      ~{if (gzip) then "-gzip" else ""} \
      ~{if (bzip_two) then "-bzip2" else ""} \
      ~{if (force) then "-force" else ""} \
      ~{if (gs_two_out) then "-gs2out" else ""} \
      ~{if (min_match_len) then "-minmatchlen" else ""} \
      ~{if (seed_length) then "-seedlength" else ""} \
      ~{if (ex_drop) then "-exdrop" else ""} \
      ~{if (prm_in_match_len) then "-prminmatchlen" else ""} \
      ~{if (pr_seed_length) then "-prseedlength" else ""} \
      ~{if (prh_dist) then "-prhdist" else ""} \
      ~{if (gc_max_gap_width) then "-gcmaxgapwidth" else ""} \
      ~{if (gcm_in_coverage) then "-gcmincoverage" else ""} \
      ~{if (paralogs) then "-paralogs" else ""} \
      ~{if (intron_cut_out) then "-introncutout" else ""} \
      ~{if (fast_dp) then "-fastdp" else ""} \
      ~{if defined(auto_intron_cut_out) then ("-autointroncutout " +  '"' + auto_intron_cut_out + '"') else ""} \
      ~{if (intermediate) then "-intermediate" else ""} \
      ~{if (first) then "-first" else ""} \
      ~{if (version) then "-version" else ""}
  >>>
  parameter_meta {
    genomic: "specify input files containing genomic sequences\\nmandatory option"
    cdna: "specify input files containing cDNA/EST sequences"
    protein: "specify input files containing protein sequences"
    species: "specify species to select splice site model which is most\\nappropriate; possible species:\\n\\\"human\\\"\\n\\\"mouse\\\"\\n\\\"rat\\\"\\n\\\"chicken\\\"\\n\\\"drosophila\\\"\\n\\\"nematode\\\"\\n\\\"fission_yeast\\\"\\n\\\"aspergillus\\\"\\n\\\"arabidopsis\\\"\\n\\\"maize\\\"\\n\\\"rice\\\"\\n\\\"medicago\\\"\\ndefault: undefined"
    b_ssm: "read bssm parameter from file in the path given by the\\nenvironment variable BSSMDIR\\ndefault: undefined"
    score_matrix: "read amino acid substitution scoring matrix from file in the\\npath given by the environment variable GTHDATADIR\\ndefault: BLOSUM62"
    translation_table: "the codon translation table used for codon translation in\\nmatching, DP, and output\\ndefault: 1"
    analyze_only_forward: "analyze only forward strand of genomic sequences\\ndefault: no"
    analyze_only_strand: "analyze only reverse strand of genomic sequences\\ndefault: no"
    cdna_forward: "align only forward strand of cDNAs\\ndefault: no"
    from_pos: "analyze genomic sequence from this position\\nrequires -topos or -width; counting from 1 on\\ndefault: 0"
    topos: "analyze genomic sequence to this position\\nrequires -frompos; counting from 1 on\\ndefault: 0"
    width: "analyze only this width of genomic sequence\\nrequires -frompos\\ndefault: 0"
    be_verbosedefault_no: "be verbose\\ndefault: no"
    xml_out: "show output in XML format\\ndefault: no"
    gff_three_out: "show output in GFF3 format\\ndefault: no"
    md_five_ids: "show MD5 fingerprints as sequence IDs\\ndefault: no"
    redirect_output_specified: "redirect output to specified file\\ndefault: undefined"
    gzip: "write gzip compressed output file\\ndefault: no"
    bzip_two: "write bzip2 compressed output file\\ndefault: no"
    force: "force writing to output file\\ndefault: no"
    gs_two_out: "output in old GeneSeqer2 format\\ndefault: no"
    min_match_len: "specify minimum match length (cDNA matching)\\ndefault: 20"
    seed_length: "specify the seed length (cDNA matching)\\ndefault: 18"
    ex_drop: "specify the Xdrop value for edit distance extension (cDNA\\nmatching)\\ndefault: 2"
    prm_in_match_len: "specify minimum match length (protein matches)\\ndefault: 24"
    pr_seed_length: "specify seed length (protein matching)\\ndefault: 10"
    prh_dist: "specify Hamming distance (protein matching)\\ndefault: 4"
    gc_max_gap_width: "set the maximum gap width for global chains\\ndefines approximately the maximum intron length\\nset to 0 to allow for unlimited length\\nin order to avoid false-positive exons (lonely exons) at the\\nsequence ends, it is very important to set this parameter\\nappropriately!\\ndefault: 1000000"
    gcm_in_coverage: "set the minimum coverage of global chains regarding to the\\nreference sequence\\ndefault: 50"
    paralogs: "compute paralogous genes (different chaining procedure)\\ndefault: no"
    intron_cut_out: "enable the intron cutout technique\\ndefault: no"
    fast_dp: "use jump table to increase speed of DP calculation\\ndefault: no"
    auto_intron_cut_out: "the automatic intron cutout matrix size in megabytes and\\nenable the automatic intron cutout technique\\ndefault: 0"
    intermediate: "stop after calculation of spliced alignments and output\\nresults in reusable XML format. Do not process this output\\nyourself, use the ``normal'' XML output instead!\\ndefault: no"
    first: "set the maximum number of spliced alignments per genomic DNA\\ninput. Set to 0 for unlimited number.\\ndefault: 0"
    version: "display version information and exit"
  }
  output {
    File out_stdout = stdout()
    File out_redirect_output_specified = "${in_redirect_output_specified}"
    File out_gzip = "${in_gzip}"
    File out_bzip_two = "${in_bzip_two}"
    File out_force = "${in_force}"
  }
}