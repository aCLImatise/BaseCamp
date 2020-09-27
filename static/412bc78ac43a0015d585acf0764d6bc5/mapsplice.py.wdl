version 1.0

task Mapsplicepy {
  input {
    Boolean? c_slash_chromosome_dir
    Boolean? string_path_prefix
    Boolean? one_slash
    Boolean? two_slash
    Boolean? p_slash_threads
    Directory? oslash_output
    Boolean? qual_scale
    Boolean? bam
    Boolean? keep_tmp
    Boolean? s_slash_se_glen
    Boolean? min_map_len
    Boolean? k_slash_max_hits
    Boolean? i_slash_min_intron
    Boolean? i_slash_max_intron
    Boolean? non_canonical_double_anchor
    Boolean? non_canonical_single_anchor
    Boolean? filtering
    Boolean? m_slash_splice_mis
    Boolean? max_append_mis
    Boolean? ins
    Boolean? del
    Boolean? fusion
    Boolean? min_fusion_distance
    Boolean? gene_gtf
    Boolean? h_slash_help
    Boolean? v_slash_version
    String? c
  }
  command <<<
    mapsplice_py \
      ~{if (c_slash_chromosome_dir) then "-c/--chromosome-dir" else ""} \
      ~{if (string_path_prefix) then "-x" else ""} \
      ~{if (one_slash) then "-1/" else ""} \
      ~{if (two_slash) then "-2/" else ""} \
      ~{if (p_slash_threads) then "-p/--threads" else ""} \
      ~{if (oslash_output) then "-o/--output" else ""} \
      ~{if (qual_scale) then "--qual-scale" else ""} \
      ~{if (bam) then "--bam" else ""} \
      ~{if (keep_tmp) then "--keep-tmp" else ""} \
      ~{if (s_slash_se_glen) then "-s/--seglen" else ""} \
      ~{if (min_map_len) then "--min-map-len" else ""} \
      ~{if (k_slash_max_hits) then "-k/max-hits" else ""} \
      ~{if (i_slash_min_intron) then "-i/--min-intron" else ""} \
      ~{if (i_slash_max_intron) then "-I/--max-intron" else ""} \
      ~{if (non_canonical_double_anchor) then "--non-canonical-double-anchor" else ""} \
      ~{if (non_canonical_single_anchor) then "--non-canonical-single-anchor" else ""} \
      ~{if (filtering) then "--filtering" else ""} \
      ~{if (m_slash_splice_mis) then "-m/--splice-mis" else ""} \
      ~{if (max_append_mis) then "--max-append-mis" else ""} \
      ~{if (ins) then "--ins" else ""} \
      ~{if (del) then "--del" else ""} \
      ~{if (fusion) then "--fusion" else ""} \
      ~{if (min_fusion_distance) then "--min-fusion-distance" else ""} \
      ~{if (gene_gtf) then "--gene-gtf" else ""} \
      ~{if (h_slash_help) then "-h/--help" else ""} \
      ~{if (v_slash_version) then "-v/--version" else ""} \
      ~{if defined(c) then ("-c " +  '"' + c + '"') else ""}
  >>>
  parameter_meta {
    c_slash_chromosome_dir: "<string>     reference sequence directory"
    string_path_prefix: "<string>     path and prefix of bowtie index"
    one_slash: "<string>     end 1 reads / single end reads"
    two_slash: "<string>     end 2 reads"
    p_slash_threads: "<int>        number of threads, default: 1"
    oslash_output: "<string>     output directory, default: ./mapsplice_out"
    qual_scale: "<string>     quality scale, phred64(default) or phred33 or solexa64"
    bam: "output alignment in BAM format, default: SAM format."
    keep_tmp: "keep intermediate files, default: off"
    s_slash_se_glen: "<int>        segment length, default: 25"
    min_map_len: "<int>        minimum alignment length, default: 50"
    k_slash_max_hits: "<int>        maximum alignments per read, default: 4"
    i_slash_min_intron: "<int>        minimum intron length, default: 50"
    i_slash_max_intron: "<int>        maximum intron length, default: 300,000"
    non_canonical_double_anchor: "also search for non-canonical junctions in double anchor case, default: off(same parameter as --non-canonical in versions previous to MapSplice 2.2.0)"
    non_canonical_single_anchor: "also search for non-canonical junctions in single anchor case, default: off"
    filtering: "<int>        The stringency level of filtering splice junctions in the range of [1, 2].\\nDefault is 2.\\n1: Less stringent filtering, with higher sensitivity of splice junction detection.\\n2: Standard filtering."
    m_slash_splice_mis: "<int>        Maximum number of mismatches that are allowed in the first/last segment\\ncrossing a splice junction in the range of [0, 2]. Default is 1.\\n(Maximum number of mismatches that are allowed in the middle segment\\ncrossing a splice junction is always fixed at 2.)"
    max_append_mis: "<int>        Maximum number of mismatches allowed to append a high error exonic segment\\nnext to an adjacent low error segment. Default is 3."
    ins: "<int>        maximum insertion length, default: 6, must in range [0, 10]"
    del: "<int>        maximum deletion length, default: 6"
    fusion: "| --fusion-non-canonical           also search for fusion junction, default: off"
    min_fusion_distance: "<int>        Minimum distance between two gapped segments to be considered as fusion candidate.\\ndefault is 10,000. Please set this to lower value(e.g 200) to be more sensitive to\\ncircular RNA detection."
    gene_gtf: "<string>     Gene annotation file in GTF format, used to annotate fusion junctions. Can be downloaded\\nfrom ENSEMBL ftp site. (e.g, for human hg19: Homo_sapiens.GRCh37.66.gtf.gz). Required\\nfor the detection of Circular RNA."
    h_slash_help: "print the usage message"
    v_slash_version: "print the version of MapSplice"
    c: ""
  }
  output {
    File out_stdout = stdout()
    Directory out_oslash_output = "${in_oslash_output}"
  }
}