version 1.0

task Dkfzbiasfilter.py {
  input {
    String? temp_folder
    String? mapq
    String? base_q
    String? quality_scheme
    String? pval_th_res
    String? bias_ratio_min
    String? bias_ratio_max
    String? n_reads_min
    String? nm_utm_in
    Int? max_op_reads_pcr_weak
    Int? max_op_reads_pcr_strong
    Int? max_op_reads_seq_weak
    Int? max_op_reads_seq_strong
    Int? max_op_ratio_pcr
    Int? max_op_ratio_seq
    String? filter_cycles
    Boolean? write_qc
    Boolean? pass_only
    String vcf_file
    String bam_file
    String reference_sequence_file
    String filtered_vcf_file
  }
  command <<<
    dkfzbiasfilter.py \
      ~{vcf_file} \
      ~{bam_file} \
      ~{reference_sequence_file} \
      ~{filtered_vcf_file} \
      ~{if defined(temp_folder) then ("--tempFolder " +  '"' + temp_folder + '"') else ""} \
      ~{if defined(mapq) then ("--mapq " +  '"' + mapq + '"') else ""} \
      ~{if defined(base_q) then ("--baseq " +  '"' + base_q + '"') else ""} \
      ~{if defined(quality_scheme) then ("--qualityScheme " +  '"' + quality_scheme + '"') else ""} \
      ~{if defined(pval_th_res) then ("--pValThres " +  '"' + pval_th_res + '"') else ""} \
      ~{if defined(bias_ratio_min) then ("--biasRatioMin " +  '"' + bias_ratio_min + '"') else ""} \
      ~{if defined(bias_ratio_max) then ("--biasRatioMax " +  '"' + bias_ratio_max + '"') else ""} \
      ~{if defined(n_reads_min) then ("--nReadsMin " +  '"' + n_reads_min + '"') else ""} \
      ~{if defined(nm_utm_in) then ("--nMutMin " +  '"' + nm_utm_in + '"') else ""} \
      ~{if defined(max_op_reads_pcr_weak) then ("--maxOpReadsPcrWeak " +  '"' + max_op_reads_pcr_weak + '"') else ""} \
      ~{if defined(max_op_reads_pcr_strong) then ("--maxOpReadsPcrStrong " +  '"' + max_op_reads_pcr_strong + '"') else ""} \
      ~{if defined(max_op_reads_seq_weak) then ("--maxOpReadsSeqWeak " +  '"' + max_op_reads_seq_weak + '"') else ""} \
      ~{if defined(max_op_reads_seq_strong) then ("--maxOpReadsSeqStrong " +  '"' + max_op_reads_seq_strong + '"') else ""} \
      ~{if defined(max_op_ratio_pcr) then ("--maxOpRatioPcr " +  '"' + max_op_ratio_pcr + '"') else ""} \
      ~{if defined(max_op_ratio_seq) then ("--maxOpRatioSeq " +  '"' + max_op_ratio_seq + '"') else ""} \
      ~{if defined(filter_cycles) then ("--filterCycles " +  '"' + filter_cycles + '"') else ""} \
      ~{true="--writeQC" false="" write_qc} \
      ~{true="--passOnly" false="" pass_only}
  >>>
  parameter_meta {
    temp_folder: "Path to the folder where temporary files are stored [default: /tmp]"
    mapq: "Minimal mapping quality of a read to be considered for error count calculation [default: 30]"
    base_q: "Minimal base quality to be considered for error count calculation [default: 13]"
    quality_scheme: "Scheme of quality score used in sequencing (illumina or phred) [default: phred]"
    pval_th_res: "P-value threshold of binomial test for read bias [default: 0.01]"
    bias_ratio_min: "Minimal bias ratio for a variant to be considered as weakly biased [default: 0.53]"
    bias_ratio_max: "Minimal bias ratio for a variant to be considered as strongly biased [default: 0.63]"
    n_reads_min: "Minimal number of reads observed for a certain variant to be considered for weak bias calculation [default: 20]"
    nm_utm_in: "Minimal number of mutations observed for a certain variant to be considered for bias calculation [default: 4]"
    max_op_reads_pcr_weak: "Maximal number of reads observed on the opposite strand to flag a variant as being weakly pcr biased [default: 0]"
    max_op_reads_pcr_strong: "Maximal number of reads observed on the opposite strand to flag a variant as being strongly pcr biased [default: 1]"
    max_op_reads_seq_weak: "Maximal number of reads observed on the opposite strand to flag a variant as being weakly sequencing biased [default: 0]"
    max_op_reads_seq_strong: "Maximal number of reads observed on the opposite strand to flag a variant as being strongly sequencing biased [default: 1]"
    max_op_ratio_pcr: "Maximal ratio of reads from opposite strand to flag a variant as pcr biased [default: 0.1]"
    max_op_ratio_seq: "Maximal ratio of reads from opposite strand to flag a variant as pcr biased [default: 0.1]"
    filter_cycles: "Number of filtering cycles. If number of cycles is 0, then the vcf file is only annotated with ACGTNacgtn<PLUS | MINUS> entries in the INFO field, and bias plots are created before filtering [default: 2]"
    write_qc: "Write quality control? If true, then a folder is created within the same folder as the filtered vcf file storing bias plots and qc files"
    pass_only: "Only apply filters to currently passing variants."
    vcf_file: ""
    bam_file: ""
    reference_sequence_file: ""
    filtered_vcf_file: ""
  }
}