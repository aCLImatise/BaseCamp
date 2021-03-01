version 1.0

task Mapsplicepy {
  input {
    Boolean? chromosome_dir
    Boolean? string_path_prefix
    Boolean? string_end_
    Boolean? string_end_reads
    Boolean? threads
    Directory? string_directory_default
    Boolean? qual_scale
    Boolean? bam
    Boolean? keep_tmp
    Boolean? se_glen
    Boolean? min_map_len
    Boolean? maxhits_int_alignments
    Boolean? min_intron
    Boolean? max_intron
    Boolean? non_canonical_double_anchor
    Boolean? non_canonical_single_anchor
    Boolean? filtering
    Boolean? splice_mis
    Boolean? max_append_mis
    Boolean? ins
    Boolean? del
    Boolean? fusion_non_canonical
    Boolean? min_fusion_distance
    Boolean? gene_gtf
  }
  command <<<
    mapsplice_py \
      ~{if (chromosome_dir) then "--chromosome-dir" else ""} \
      ~{if (string_path_prefix) then "-x" else ""} \
      ~{if (string_end_) then "-1" else ""} \
      ~{if (string_end_reads) then "-2" else ""} \
      ~{if (threads) then "--threads" else ""} \
      ~{if (string_directory_default) then "--output" else ""} \
      ~{if (qual_scale) then "--qual-scale" else ""} \
      ~{if (bam) then "--bam" else ""} \
      ~{if (keep_tmp) then "--keep-tmp" else ""} \
      ~{if (se_glen) then "--seglen" else ""} \
      ~{if (min_map_len) then "--min-map-len" else ""} \
      ~{if (maxhits_int_alignments) then "-k" else ""} \
      ~{if (min_intron) then "--min-intron" else ""} \
      ~{if (max_intron) then "--max-intron" else ""} \
      ~{if (non_canonical_double_anchor) then "--non-canonical-double-anchor" else ""} \
      ~{if (non_canonical_single_anchor) then "--non-canonical-single-anchor" else ""} \
      ~{if (filtering) then "--filtering" else ""} \
      ~{if (splice_mis) then "--splice-mis" else ""} \
      ~{if (max_append_mis) then "--max-append-mis" else ""} \
      ~{if (ins) then "--ins" else ""} \
      ~{if (del) then "--del" else ""} \
      ~{if (fusion_non_canonical) then "--fusion-non-canonical" else ""} \
      ~{if (min_fusion_distance) then "--min-fusion-distance" else ""} \
      ~{if (gene_gtf) then "--gene-gtf" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    chromosome_dir: "<string>     reference sequence directory"
    string_path_prefix: "<string>     path and prefix of bowtie index"
    string_end_: "/                            <string>     end 1 reads / single end reads"
    string_end_reads: "/                            <string>     end 2 reads"
    threads: "<int>        number of threads, default: 1"
    string_directory_default: "<string>     output directory, default: ./mapsplice_out"
    qual_scale: "<string>     quality scale, phred64(default) or phred33 or solexa64"
    bam: "output alignment in BAM format, default: SAM format."
    keep_tmp: "keep intermediate files, default: off"
    se_glen: "<int>        segment length, default: 25"
    min_map_len: "<int>        minimum alignment length, default: 50"
    maxhits_int_alignments: "/max-hits                    <int>        maximum alignments per read, default: 4"
    min_intron: "<int>        minimum intron length, default: 50"
    max_intron: "<int>        maximum intron length, default: 300,000"
    non_canonical_double_anchor: "also search for non-canonical junctions in double anchor case, default: off(same parameter as --non-canonical in versions previous to MapSplice 2.2.0)"
    non_canonical_single_anchor: "also search for non-canonical junctions in single anchor case, default: off"
    filtering: "<int>        The stringency level of filtering splice junctions in the range of [1, 2].\\nDefault is 2.\\n1: Less stringent filtering, with higher sensitivity of splice junction detection.\\n2: Standard filtering."
    splice_mis: "<int>        Maximum number of mismatches that are allowed in the first/last segment\\ncrossing a splice junction in the range of [0, 2]. Default is 1.\\n(Maximum number of mismatches that are allowed in the middle segment\\ncrossing a splice junction is always fixed at 2.)"
    max_append_mis: "<int>        Maximum number of mismatches allowed to append a high error exonic segment\\nnext to an adjacent low error segment. Default is 3."
    ins: "<int>        maximum insertion length, default: 6, must in range [0, 10]"
    del: "<int>        maximum deletion length, default: 6"
    fusion_non_canonical: "also search for fusion junction, default: off"
    min_fusion_distance: "<int>        Minimum distance between two gapped segments to be considered as fusion candidate.\\ndefault is 10,000. Please set this to lower value(e.g 200) to be more sensitive to\\ncircular RNA detection."
    gene_gtf: "<string>     Gene annotation file in GTF format, used to annotate fusion junctions. Can be downloaded\\nfrom ENSEMBL ftp site. (e.g, for human hg19: Homo_sapiens.GRCh37.66.gtf.gz). Required\\nfor the detection of Circular RNA."
  }
  output {
    File out_stdout = stdout()
    Directory out_string_directory_default = "${in_string_directory_default}"
  }
}