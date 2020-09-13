version 1.0

task Imsindel {
  input {
    Boolean? bam
    String? chr
    Boolean? out_d
    Int? in_del_size
    Boolean? re_ffa
    Boolean? base_q
    Boolean? mapq
    Boolean? within
    Boolean? pair_within
    Boolean? alt_read_depth
    Boolean? support_reads
    Boolean? clip_length
    Boolean? support_clip_length
    Boolean? gl_search
    Boolean? gl_search_mat
    Boolean? maff_t
    Boolean? sam_tools
    Boolean? temp
    Boolean? thread
    File? output_consensus_seq
    Boolean? exclude_region
  }
  command <<<
    imsindel \
      ~{if (bam) then "--bam" else ""} \
      ~{if defined(chr) then ("--chr " +  '"' + chr + '"') else ""} \
      ~{if (out_d) then "--outd" else ""} \
      ~{if defined(in_del_size) then ("--indelsize " +  '"' + in_del_size + '"') else ""} \
      ~{if (re_ffa) then "--reffa" else ""} \
      ~{if (base_q) then "--baseq" else ""} \
      ~{if (mapq) then "--mapq" else ""} \
      ~{if (within) then "--within" else ""} \
      ~{if (pair_within) then "--pair-within" else ""} \
      ~{if (alt_read_depth) then "--alt-read-depth" else ""} \
      ~{if (support_reads) then "--support-reads" else ""} \
      ~{if (clip_length) then "--clip-length" else ""} \
      ~{if (support_clip_length) then "--support-clip-length" else ""} \
      ~{if (gl_search) then "--glsearch" else ""} \
      ~{if (gl_search_mat) then "--glsearch-mat" else ""} \
      ~{if (maff_t) then "--mafft" else ""} \
      ~{if (sam_tools) then "--samtools" else ""} \
      ~{if (temp) then "--temp" else ""} \
      ~{if (thread) then "--thread" else ""} \
      ~{if (output_consensus_seq) then "--output-consensus-seq" else ""} \
      ~{if (exclude_region) then "--exclude-region" else ""}
  >>>
  parameter_meta {
    bam: "/path/to/foo.bam"
    chr: ""
    out_d: "/path/to/outoput-dir"
    in_del_size: "indel-size"
    re_ffa: "/path/to/ref.fa"
    base_q: "[20]"
    mapq: "[20]"
    within: "[3]"
    pair_within: "[5]"
    alt_read_depth: "[5]"
    support_reads: "[3]"
    clip_length: "[5]"
    support_clip_length: "[5]"
    gl_search: "[glsearch36]"
    gl_search_mat: "[data/mydna.mat]"
    maff_t: "[mafft]"
    sam_tools: "[samtools]"
    temp: "[/temp]"
    thread: "[1]"
    output_consensus_seq: "/path/to/output-dir"
    exclude_region: "/path/to/exclude-list"
  }
  output {
    File out_stdout = stdout()
    File out_output_consensus_seq = "${in_output_consensus_seq}"
  }
}