version 1.0

task Dkfzbiasfilterpy {
  input {
    Directory? temp_folder
    Int? mapq
    Int? base_q
    String? quality_scheme
    Float? pval_th_res
    Int? bias_ratio_min
    Int? bias_ratio_max
    Int? n_reads_min
    Int? nm_utm_in
    Int? max_op_reads_pcr_weak
    Int? max_op_reads_pcr_strong
    Int? max_op_reads_seq_weak
    Int? max_op_reads_seq_strong
    Int? max_op_ratio_pcr
    Int? max_op_ratio_seq
    Int? filter_cycles
    Boolean? write_qc
    Boolean? pass_only
    String vcf_file
    String bam_file
    String reference_sequence_file
    String filtered_vcf_file
  }
  command <<<
    dkfzbiasfilter_py \
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
      ~{if (write_qc) then "--writeQC" else ""} \
      ~{if (pass_only) then "--passOnly" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    temp_folder: "Path to the folder where temporary files are stored\\n[default: /tmp]"
    mapq: "Minimal mapping quality of a read to be considered for\\nerror count calculation [default: 30]"
    base_q: "Minimal base quality to be considered for error count\\ncalculation [default: 13]"
    quality_scheme: "Scheme of quality score used in sequencing (illumina\\nor phred) [default: phred]"
    pval_th_res: "P-value threshold of binomial test for read bias\\n[default: 0.01]"
    bias_ratio_min: "Minimal bias ratio for a variant to be considered as\\nweakly biased [default: 0.53]"
    bias_ratio_max: "Minimal bias ratio for a variant to be considered as\\nstrongly biased [default: 0.63]"
    n_reads_min: "Minimal number of reads observed for a certain variant\\nto be considered for weak bias calculation [default:\\n20]"
    nm_utm_in: "Minimal number of mutations observed for a certain\\nvariant to be considered for bias calculation\\n[default: 4]"
    max_op_reads_pcr_weak: "Maximal number of reads observed on the opposite\\nstrand to flag a variant as being weakly pcr biased\\n[default: 0]"
    max_op_reads_pcr_strong: "Maximal number of reads observed on the opposite\\nstrand to flag a variant as being strongly pcr biased\\n[default: 1]"
    max_op_reads_seq_weak: "Maximal number of reads observed on the opposite\\nstrand to flag a variant as being weakly sequencing\\nbiased [default: 0]"
    max_op_reads_seq_strong: "Maximal number of reads observed on the opposite\\nstrand to flag a variant as being strongly sequencing\\nbiased [default: 1]"
    max_op_ratio_pcr: "Maximal ratio of reads from opposite strand to flag a\\nvariant as pcr biased [default: 0.1]"
    max_op_ratio_seq: "Maximal ratio of reads from opposite strand to flag a\\nvariant as pcr biased [default: 0.1]"
    filter_cycles: "Number of filtering cycles. If number of cycles is 0,\\nthen the vcf file is only annotated with\\nACGTNacgtn<PLUS | MINUS> entries in the INFO field,\\nand bias plots are created before filtering [default:\\n2]"
    write_qc: "Write quality control? If true, then a folder is\\ncreated within the same folder as the filtered vcf\\nfile storing bias plots and qc files"
    pass_only: "Only apply filters to currently passing variants."
    vcf_file: ""
    bam_file: ""
    reference_sequence_file: ""
    filtered_vcf_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}