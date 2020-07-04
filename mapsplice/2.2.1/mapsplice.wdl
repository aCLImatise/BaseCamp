version 1.0

task Mapsplice.py {
  input {
    Boolean? c_slash_chromosome_dir
    Boolean? string_path_prefix
    Boolean? one_slash
    Boolean? two_slash
    Boolean? p_slash_threads
    Boolean? oslash_output
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
    mapsplice.py \
      ~{true="-c/--chromosome-dir" false="" c_slash_chromosome_dir} \
      ~{true="-x" false="" string_path_prefix} \
      ~{true="-1/" false="" one_slash} \
      ~{true="-2/" false="" two_slash} \
      ~{true="-p/--threads" false="" p_slash_threads} \
      ~{true="-o/--output" false="" oslash_output} \
      ~{true="--qual-scale" false="" qual_scale} \
      ~{true="--bam" false="" bam} \
      ~{true="--keep-tmp" false="" keep_tmp} \
      ~{true="-s/--seglen" false="" s_slash_se_glen} \
      ~{true="--min-map-len" false="" min_map_len} \
      ~{true="-k/max-hits" false="" k_slash_max_hits} \
      ~{true="-i/--min-intron" false="" i_slash_min_intron} \
      ~{true="-I/--max-intron" false="" i_slash_max_intron} \
      ~{true="--non-canonical-double-anchor" false="" non_canonical_double_anchor} \
      ~{true="--non-canonical-single-anchor" false="" non_canonical_single_anchor} \
      ~{true="--filtering" false="" filtering} \
      ~{true="-m/--splice-mis" false="" m_slash_splice_mis} \
      ~{true="--max-append-mis" false="" max_append_mis} \
      ~{true="--ins" false="" ins} \
      ~{true="--del" false="" del} \
      ~{true="--fusion" false="" fusion} \
      ~{true="--min-fusion-distance" false="" min_fusion_distance} \
      ~{true="--gene-gtf" false="" gene_gtf} \
      ~{true="-h/--help" false="" h_slash_help} \
      ~{true="-v/--version" false="" v_slash_version} \
      ~{if defined(c) then ("-c " +  '"' + c + '"') else ""}
  >>>
  parameter_meta {
    c_slash_chromosome_dir: "<string>     reference sequence directory                       "
    string_path_prefix: "<string>     path and prefix of bowtie index                     "
    one_slash: "<string>     end 1 reads / single end reads                      "
    two_slash: "<string>     end 2 reads                                         "
    p_slash_threads: "<int>        number of threads, default: 1                       "
    oslash_output: "<string>     output directory, default: ./mapsplice_out"
    qual_scale: "<string>     quality scale, phred64(default) or phred33 or solexa64      "
    bam: "output alignment in BAM format, default: SAM format.           "
    keep_tmp: "keep intermediate files, default: off     "
    s_slash_se_glen: "<int>        segment length, default: 25                          "
    min_map_len: "<int>        minimum alignment length, default: 50                "
    k_slash_max_hits: "<int>        maximum alignments per read, default: 4              "
    i_slash_min_intron: "<int>        minimum intron length, default: 50         "
    i_slash_max_intron: "<int>        maximum intron length, default: 300,000    "
    non_canonical_double_anchor: "also search for non-canonical junctions in double anchor case, default: off(same parameter as --non-canonical in versions previous to MapSplice 2.2.0)"
    non_canonical_single_anchor: "also search for non-canonical junctions in single anchor case, default: off"
    filtering: "<int>        The stringency level of filtering splice junctions in the range of [1, 2].  Default is 2. 1: Less stringent filtering, with higher sensitivity of splice junction detection. 2: Standard filtering.  "
    m_slash_splice_mis: "<int>        Maximum number of mismatches that are allowed in the first/last segment crossing a splice junction in the range of [0, 2]. Default is 1. (Maximum number of mismatches that are allowed in the middle segment  crossing a splice junction is always fixed at 2.)                                 "
    max_append_mis: "<int>        Maximum number of mismatches allowed to append a high error exonic segment  next to an adjacent low error segment. Default is 3."
    ins: "<int>        maximum insertion length, default: 6, must in range [0, 10]                                                "
    del: "<int>        maximum deletion length, default: 6                                 "
    fusion: "| --fusion-non-canonical           also search for fusion junction, default: off"
    min_fusion_distance: "<int>        Minimum distance between two gapped segments to be considered as fusion candidate.  default is 10,000. Please set this to lower value(e.g 200) to be more sensitive to  circular RNA detection. "
    gene_gtf: "<string>     Gene annotation file in GTF format, used to annotate fusion junctions. Can be downloaded from ENSEMBL ftp site. (e.g, for human hg19: Homo_sapiens.GRCh37.66.gtf.gz). Required for the detection of Circular RNA."
    h_slash_help: "print the usage message                    "
    v_slash_version: "print the version of MapSplice             "
    c: ""
  }
}