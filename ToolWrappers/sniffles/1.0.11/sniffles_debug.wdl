version 1.0

task Snifflesdebug {
  input {
    File? _mappedreads_stringrequired
    File? _vcf_stringvcf
    File? _bedpe_stringbedpe
    File? ivcf
    File? tmp_file
    Int? _minsupport_intminimum
    Int? max_num_splits
    Int? _intmaximum_distance
    Int? _threads_threads
    Int? _minlength_length
    Int? _minmappingqual_mapping
    Int? _numreadsreport_n
    Int? _minseqsize_intdiscard
    Int? _minzmw_sv
    Boolean? cs_string
    Boolean? genotype
    Boolean? cluster
    Int? cluster_support
    Float? _allelefreq_floatthreshold
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
    sniffles_debug \
      ~{fritz_dots_ed_la_zeck_at_gmail_dot_com} \
      ~{if defined(_mappedreads_stringrequired) then ("-m " +  '"' + _mappedreads_stringrequired + '"') else ""} \
      ~{if defined(_vcf_stringvcf) then ("-v " +  '"' + _vcf_stringvcf + '"') else ""} \
      ~{if defined(_bedpe_stringbedpe) then ("-b " +  '"' + _bedpe_stringbedpe + '"') else ""} \
      ~{if defined(ivcf) then ("--Ivcf " +  '"' + ivcf + '"') else ""} \
      ~{if defined(tmp_file) then ("--tmp_file " +  '"' + tmp_file + '"') else ""} \
      ~{if defined(_minsupport_intminimum) then ("-s " +  '"' + _minsupport_intminimum + '"') else ""} \
      ~{if defined(max_num_splits) then ("--max_num_splits " +  '"' + max_num_splits + '"') else ""} \
      ~{if defined(_intmaximum_distance) then ("-d " +  '"' + _intmaximum_distance + '"') else ""} \
      ~{if defined(_threads_threads) then ("-t " +  '"' + _threads_threads + '"') else ""} \
      ~{if defined(_minlength_length) then ("-l " +  '"' + _minlength_length + '"') else ""} \
      ~{if defined(_minmappingqual_mapping) then ("-q " +  '"' + _minmappingqual_mapping + '"') else ""} \
      ~{if defined(_numreadsreport_n) then ("-n " +  '"' + _numreadsreport_n + '"') else ""} \
      ~{if defined(_minseqsize_intdiscard) then ("-r " +  '"' + _minseqsize_intdiscard + '"') else ""} \
      ~{if defined(_minzmw_sv) then ("-z " +  '"' + _minzmw_sv + '"') else ""} \
      ~{if (cs_string) then "--cs_string" else ""} \
      ~{if (genotype) then "--genotype" else ""} \
      ~{if (cluster) then "--cluster" else ""} \
      ~{if defined(cluster_support) then ("--cluster_support " +  '"' + cluster_support + '"') else ""} \
      ~{if defined(_allelefreq_floatthreshold) then ("-f " +  '"' + _allelefreq_floatthreshold + '"') else ""} \
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
  parameter_meta {
    _mappedreads_stringrequired: ",  --mapped_reads <string>\\n(required)  Sorted bam File"
    _vcf_stringvcf: ",  --vcf <string>\\nVCF output file name []"
    _bedpe_stringbedpe: ",  --bedpe <string>\\nbedpe output file name []"
    ivcf: "Input VCF file name. Enable force calling []"
    tmp_file: "path to temporary file otherwise Sniffles will use the current directory. []"
    _minsupport_intminimum: ",  --min_support <int>\\nMinimum number of reads that support a SV. [10]"
    max_num_splits: "Maximum number of splits per read to be still taken into account. [7]"
    _intmaximum_distance: ",  --max_distance <int>\\nMaximum distance to group SV together. [1000]"
    _threads_threads: ",  --threads <int>\\nNumber of threads to use. [3]"
    _minlength_length: ",  --min_length <int>\\nMinimum length of SV to be reported. [30]"
    _minmappingqual_mapping: ",  --minmapping_qual <int>\\nMinimum Mapping Quality. [20]"
    _numreadsreport_n: ",  --num_reads_report <int>\\nReport up to N reads that support the SV in the vcf file. -1: report all. [0]"
    _minseqsize_intdiscard: ",  --min_seq_size <int>\\nDiscard read if non of its segment is larger then this. [2000]"
    _minzmw_sv: ",  --min_zmw <int>\\nDiscard SV that are not supported by at least x zmws. This applies only for PacBio recognizable reads. [0]"
    cs_string: "Enables the scan of CS string instead of Cigar and MD.  [false]"
    genotype: "Enables Sniffles to compute the genotypes. [false]"
    cluster: "Enables Sniffles to phase SVs that occur on the same reads [false]"
    cluster_support: "Minimum number of reads supporting clustering of SV. [1]"
    _allelefreq_floatthreshold: ",  --allelefreq <float>\\nThreshold on allele frequency (0-1).  [0]"
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
    File out__vcf_stringvcf = "${in__vcf_stringvcf}"
    File out__bedpe_stringbedpe = "${in__bedpe_stringbedpe}"
  }
}