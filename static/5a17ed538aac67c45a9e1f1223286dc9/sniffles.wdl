version 1.0

task Sniffles {
  input {
    String? ivcf
    String? tmp_file
    Boolean? cs_string
    Float? min_homo_af
    Float? min_het_af
    Boolean? report_bnd
    Boolean? report_seq
    Boolean? ignore_sd
    Boolean? report_read_strands
    Boolean? ccs_reads
    Boolean? skip_parameter_estimation
    Float? del_ratio
    Float? ins_ratio
    Int? max_diff_per_window
    Int? max_dist_aln_events
    String? m
    String? v
  }
  command <<<
    sniffles \
      ~{if defined(ivcf) then ("--Ivcf " +  '"' + ivcf + '"') else ""} \
      ~{if defined(tmp_file) then ("--tmp_file " +  '"' + tmp_file + '"') else ""} \
      ~{true="--cs_string" false="" cs_string} \
      ~{if defined(min_homo_af) then ("--min_homo_af " +  '"' + min_homo_af + '"') else ""} \
      ~{if defined(min_het_af) then ("--min_het_af " +  '"' + min_het_af + '"') else ""} \
      ~{true="--report_BND" false="" report_bnd} \
      ~{true="--report_seq" false="" report_seq} \
      ~{true="--ignore_sd" false="" ignore_sd} \
      ~{true="--report_read_strands" false="" report_read_strands} \
      ~{true="--ccs_reads" false="" ccs_reads} \
      ~{true="--skip_parameter_estimation" false="" skip_parameter_estimation} \
      ~{if defined(del_ratio) then ("--del_ratio " +  '"' + del_ratio + '"') else ""} \
      ~{if defined(ins_ratio) then ("--ins_ratio " +  '"' + ins_ratio + '"') else ""} \
      ~{if defined(max_diff_per_window) then ("--max_diff_per_window " +  '"' + max_diff_per_window + '"') else ""} \
      ~{if defined(max_dist_aln_events) then ("--max_dist_aln_events " +  '"' + max_dist_aln_events + '"') else ""} \
      ~{if defined(m) then ("-m " +  '"' + m + '"') else ""} \
      ~{if defined(v) then ("-v " +  '"' + v + '"') else ""}
  >>>
  parameter_meta {
    ivcf: "Input VCF file name. Enable force calling []"
    tmp_file: "path to temporary file otherwise Sniffles will use the current directory. []"
    cs_string: "Enables the scan of CS string instead of Cigar and MD.  [false]"
    min_homo_af: "Threshold on allele frequency (0-1).  [0.8]"
    min_het_af: "Threshold on allele frequency (0-1).  [0.3]"
    report_bnd: "Dont report BND instead use Tra in vcf output.  [true]"
    report_seq: "Report sequences for indels in vcf output. (Beta version!)  [false]"
    ignore_sd: "Ignores the sd based filtering.  [false]"
    report_read_strands: "Enables the report of the strand categories per read. (Beta)  [false]"
    ccs_reads: "Preset CCS Pacbio setting. (Beta)  [false]"
    skip_parameter_estimation: "Enables the scan if only very few reads are present.  [false]"
    del_ratio: "Estimated ration of deletions per read (0-1).  [0.0458369]"
    ins_ratio: "Estimated ratio of insertions per read (0-1).  [0.049379]"
    max_diff_per_window: "Maximum differences per 100bp. [50]"
    max_dist_aln_events: "Maximum distance between alignment (indel) events. [4]"
    m: ""
    v: ""
  }
}