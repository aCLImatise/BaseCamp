version 1.0

task Ngmlr {
  input {
    Boolean? skip_write
    Boolean? bam_fix
    String? rg_id
    String? rg_sm
    String? rg_lb
    String? rg_pl
    String? rg_ds
    String? rg_dt
    String? rg_pu
    String? rg_pi
    String? rg_pg
    String? rg_cn
    String? rg_fo
    String? rg_ks
    Boolean? no_small_inv
    Boolean? no_low_quality_split
    Boolean? verbose
    Boolean? no_progress
    Int? km_er_skip
    Int? bin_size
    Int? max_segments
    Int? sub_read_length
    Int? sub_read_corridor
    String? r
    String? q
    String? o
  }
  command <<<
    ngmlr \
      ~{true="--skip-write" false="" skip_write} \
      ~{true="--bam-fix" false="" bam_fix} \
      ~{if defined(rg_id) then ("--rg-id " +  '"' + rg_id + '"') else ""} \
      ~{if defined(rg_sm) then ("--rg-sm " +  '"' + rg_sm + '"') else ""} \
      ~{if defined(rg_lb) then ("--rg-lb " +  '"' + rg_lb + '"') else ""} \
      ~{if defined(rg_pl) then ("--rg-pl " +  '"' + rg_pl + '"') else ""} \
      ~{if defined(rg_ds) then ("--rg-ds " +  '"' + rg_ds + '"') else ""} \
      ~{if defined(rg_dt) then ("--rg-dt " +  '"' + rg_dt + '"') else ""} \
      ~{if defined(rg_pu) then ("--rg-pu " +  '"' + rg_pu + '"') else ""} \
      ~{if defined(rg_pi) then ("--rg-pi " +  '"' + rg_pi + '"') else ""} \
      ~{if defined(rg_pg) then ("--rg-pg " +  '"' + rg_pg + '"') else ""} \
      ~{if defined(rg_cn) then ("--rg-cn " +  '"' + rg_cn + '"') else ""} \
      ~{if defined(rg_fo) then ("--rg-fo " +  '"' + rg_fo + '"') else ""} \
      ~{if defined(rg_ks) then ("--rg-ks " +  '"' + rg_ks + '"') else ""} \
      ~{true="--no-smallinv" false="" no_small_inv} \
      ~{true="--no-lowqualitysplit" false="" no_low_quality_split} \
      ~{true="--verbose" false="" verbose} \
      ~{true="--no-progress" false="" no_progress} \
      ~{if defined(km_er_skip) then ("--kmer-skip " +  '"' + km_er_skip + '"') else ""} \
      ~{if defined(bin_size) then ("--bin-size " +  '"' + bin_size + '"') else ""} \
      ~{if defined(max_segments) then ("--max-segments " +  '"' + max_segments + '"') else ""} \
      ~{if defined(sub_read_length) then ("--subread-length " +  '"' + sub_read_length + '"') else ""} \
      ~{if defined(sub_read_corridor) then ("--subread-corridor " +  '"' + sub_read_corridor + '"') else ""} \
      ~{if defined(r) then ("-r " +  '"' + r + '"') else ""} \
      ~{if defined(q) then ("-q " +  '"' + q + '"') else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""}
  >>>
  parameter_meta {
    skip_write: "Don't write reference index to disk [false]"
    bam_fix: "Report reads with > 64k CIGAR operations as unmapped. Required to be compatibel to BAM format [false]"
    rg_id: "Adds RG:Z:<string> to all alignments in SAM/BAM [none]"
    rg_sm: "RG header: Sample [none]"
    rg_lb: "RG header: Library [none]"
    rg_pl: "RG header: Platform [none]"
    rg_ds: "RG header: Description [none]"
    rg_dt: "RG header: Date (format: YYYY-MM-DD) [none]"
    rg_pu: "RG header: Platform unit [none]"
    rg_pi: "RG header: Median insert size [none]"
    rg_pg: "RG header: Programs [none]"
    rg_cn: "RG header: sequencing center [none]"
    rg_fo: "RG header: Flow order [none]"
    rg_ks: "RG header: Key sequence [none]"
    no_small_inv: "Don't detect small inversions [false]"
    no_low_quality_split: "Split alignments with poor quality [false]"
    verbose: "Debug output [false]"
    no_progress: "Don't print progress info while mapping [false]"
    km_er_skip: "Number of k-mers to skip when building the lookup table from the reference [2]"
    bin_size: "Sets the size of the grid used during candidate search [4]"
    max_segments: "Max number of segments allowed for a read per kb [1]"
    sub_read_length: "Length of fragments reads are split into [256]"
    sub_read_corridor: "Length of corridor sub-reads are aligned with [40]"
    r: ""
    q: ""
    o: ""
  }
}