version 1.0

task Sniffles {
  input {
    File? mapped_reads
    File? vcf
    File? bed_pe
    File? ivcf
    File? tmp_file
    Int? min_support
    Int? max_num_splits
    Int? max_distance
    Int? threads
    Int? min_length
    Int? min_mapping_qual
    Int? num_reads_report
    Int? min_seq_size
    Int? min_z_mw
    Boolean? cs_string
    Boolean? genotype
    Boolean? cluster
    Int? cluster_support
    Float? allele_freq
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
    String fritz_dots_ed_la_zeck_at_gmail_dot_com
  }
  command <<<
    sniffles \
      ~{fritz_dots_ed_la_zeck_at_gmail_dot_com} \
      ~{if defined(mapped_reads) then ("--mapped_reads " +  '"' + mapped_reads + '"') else ""} \
      ~{if defined(vcf) then ("--vcf " +  '"' + vcf + '"') else ""} \
      ~{if defined(bed_pe) then ("--bedpe " +  '"' + bed_pe + '"') else ""} \
      ~{if defined(ivcf) then ("--Ivcf " +  '"' + ivcf + '"') else ""} \
      ~{if defined(tmp_file) then ("--tmp_file " +  '"' + tmp_file + '"') else ""} \
      ~{if defined(min_support) then ("--min_support " +  '"' + min_support + '"') else ""} \
      ~{if defined(max_num_splits) then ("--max_num_splits " +  '"' + max_num_splits + '"') else ""} \
      ~{if defined(max_distance) then ("--max_distance " +  '"' + max_distance + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(min_length) then ("--min_length " +  '"' + min_length + '"') else ""} \
      ~{if defined(min_mapping_qual) then ("--minmapping_qual " +  '"' + min_mapping_qual + '"') else ""} \
      ~{if defined(num_reads_report) then ("--num_reads_report " +  '"' + num_reads_report + '"') else ""} \
      ~{if defined(min_seq_size) then ("--min_seq_size " +  '"' + min_seq_size + '"') else ""} \
      ~{if defined(min_z_mw) then ("--min_zmw " +  '"' + min_z_mw + '"') else ""} \
      ~{if (cs_string) then "--cs_string" else ""} \
      ~{if (genotype) then "--genotype" else ""} \
      ~{if (cluster) then "--cluster" else ""} \
      ~{if defined(cluster_support) then ("--cluster_support " +  '"' + cluster_support + '"') else ""} \
      ~{if defined(allele_freq) then ("--allelefreq " +  '"' + allele_freq + '"') else ""} \
      ~{if defined(min_homo_af) then ("--min_homo_af " +  '"' + min_homo_af + '"') else ""} \
      ~{if defined(min_het_af) then ("--min_het_af " +  '"' + min_het_af + '"') else ""} \
      ~{if (report_bnd) then "--report_BND" else ""} \
      ~{if (report_seq) then "--report_seq" else ""} \
      ~{if (ignore_sd) then "--ignore_sd" else ""} \
      ~{if (report_read_strands) then "--report_read_strands" else ""} \
      ~{if (ccs_reads) then "--ccs_reads" else ""} \
      ~{if (skip_parameter_estimation) then "--skip_parameter_estimation" else ""} \
      ~{if defined(del_ratio) then ("--del_ratio " +  '"' + del_ratio + '"') else ""} \
      ~{if defined(ins_ratio) then ("--ins_ratio " +  '"' + ins_ratio + '"') else ""} \
      ~{if defined(max_diff_per_window) then ("--max_diff_per_window " +  '"' + max_diff_per_window + '"') else ""} \
      ~{if defined(max_dist_aln_events) then ("--max_dist_aln_events " +  '"' + max_dist_aln_events + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    mapped_reads: "(required)  Sorted bam File"
    vcf: "VCF output file name []"
    bed_pe: "bedpe output file name []"
    ivcf: "Input VCF file name. Enable force calling []"
    tmp_file: "path to temporary file otherwise Sniffles will use the current directory. []"
    min_support: "Minimum number of reads that support a SV. [10]"
    max_num_splits: "Maximum number of splits per read to be still taken into account. [7]"
    max_distance: "Maximum distance to group SV together. [1000]"
    threads: "Number of threads to use. [3]"
    min_length: "Minimum length of SV to be reported. [30]"
    min_mapping_qual: "Minimum Mapping Quality. [20]"
    num_reads_report: "Report up to N reads that support the SV in the vcf file. -1: report all. [0]"
    min_seq_size: "Discard read if non of its segment is larger then this. [2000]"
    min_z_mw: "Discard SV that are not supported by at least x zmws. This applies only for PacBio recognizable reads. [0]"
    cs_string: "Enables the scan of CS string instead of Cigar and MD.  [false]"
    genotype: "Enables Sniffles to compute the genotypes. [false]"
    cluster: "Enables Sniffles to phase SVs that occur on the same reads [false]"
    cluster_support: "Minimum number of reads supporting clustering of SV. [1]"
    allele_freq: "Threshold on allele frequency (0-1).  [0]"
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
    max_dist_aln_events: "Maximum distance between alignment (indel) events. [4]\\n"
    fritz_dots_ed_la_zeck_at_gmail_dot_com: "Input/Output:"
  }
  output {
    File out_stdout = stdout()
    File out_vcf = "${in_vcf}"
    File out_bed_pe = "${in_bed_pe}"
  }
}