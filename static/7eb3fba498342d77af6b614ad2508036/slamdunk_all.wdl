version 1.0

task SlamdunkAll {
  input {
    String? reference
    String? bed
    String? filter_bed
    String? vcf
    String? output_dir
    String? trim_five_p
    Int? max_polya
    String? top_n
    String? threads
    Boolean? quant_seq
    Boolean? end_to_end
    Boolean? multimap
    String? min_mq
    String? min_identity
    String? max_nm
    String? min_coverage
    String? var_fraction
    String? conversion_threshold
    Int? max_read_length
    Int? min_base_qual
    String? sample_name
    String? sample_type
    String? sample_time
    String? sample_index
    Boolean? skip_sam
    File files
  }
  command <<<
    slamdunk all \
      ~{files} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(bed) then ("--bed " +  '"' + bed + '"') else ""} \
      ~{if defined(filter_bed) then ("--filterbed " +  '"' + filter_bed + '"') else ""} \
      ~{if defined(vcf) then ("--vcf " +  '"' + vcf + '"') else ""} \
      ~{if defined(output_dir) then ("--outputDir " +  '"' + output_dir + '"') else ""} \
      ~{if defined(trim_five_p) then ("--trim-5p " +  '"' + trim_five_p + '"') else ""} \
      ~{if defined(max_polya) then ("--max-polya " +  '"' + max_polya + '"') else ""} \
      ~{if defined(top_n) then ("--topn " +  '"' + top_n + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{true="--quantseq" false="" quant_seq} \
      ~{true="--endtoend" false="" end_to_end} \
      ~{true="--multimap" false="" multimap} \
      ~{if defined(min_mq) then ("--min-mq " +  '"' + min_mq + '"') else ""} \
      ~{if defined(min_identity) then ("--min-identity " +  '"' + min_identity + '"') else ""} \
      ~{if defined(max_nm) then ("--max-nm " +  '"' + max_nm + '"') else ""} \
      ~{if defined(min_coverage) then ("--min-coverage " +  '"' + min_coverage + '"') else ""} \
      ~{if defined(var_fraction) then ("--var-fraction " +  '"' + var_fraction + '"') else ""} \
      ~{if defined(conversion_threshold) then ("--conversion-threshold " +  '"' + conversion_threshold + '"') else ""} \
      ~{if defined(max_read_length) then ("--max-read-length " +  '"' + max_read_length + '"') else ""} \
      ~{if defined(min_base_qual) then ("--min-base-qual " +  '"' + min_base_qual + '"') else ""} \
      ~{if defined(sample_name) then ("--sampleName " +  '"' + sample_name + '"') else ""} \
      ~{if defined(sample_type) then ("--sampleType " +  '"' + sample_type + '"') else ""} \
      ~{if defined(sample_time) then ("--sampleTime " +  '"' + sample_time + '"') else ""} \
      ~{if defined(sample_index) then ("--sample-index " +  '"' + sample_index + '"') else ""} \
      ~{true="--skip-sam" false="" skip_sam}
  >>>
  parameter_meta {
    reference: "Reference fasta file"
    bed: "BED file with 3'UTR coordinates"
    filter_bed: "BED file with 3'UTR coordinates to filter multimappers (activates -m)"
    vcf: "Skip SNP step and provide custom variant file."
    output_dir: "Output directory for slamdunk run."
    trim_five_p: "Number of bp removed from 5' end of all reads (default: 12)"
    max_polya: "Max number of As at the 3' end of a read (default: 4)"
    top_n: "Max. number of alignments to report per read (default: 1)"
    threads: "Thread number (default: 1)"
    quant_seq: "Run plain Quantseq alignment without SLAM-seq scoring"
    end_to_end: "Use a end to end alignment algorithm for mapping."
    multimap: "Use reference to resolve multimappers (requires -n > 1)."
    min_mq: "Minimum mapping quality (default: 2)"
    min_identity: "Minimum alignment identity (default: 0.95)"
    max_nm: "Maximum NM for alignments (default: -1)"
    min_coverage: "Minimimum coverage to call variant (default: 10)"
    var_fraction: "Minimimum variant fraction to call variant (default: 0.8)"
    conversion_threshold: "Number of T>C conversions required to count read as T>C read (default: 1)"
    max_read_length: "Max read length in BAM file"
    min_base_qual: "Min base quality for T -> C conversions (default: 27)"
    sample_name: "Use this sample name for all supplied samples"
    sample_type: "Use this sample type for all supplied samples"
    sample_time: "Use this sample time for all supplied samples"
    sample_index: "Run analysis only for sample <i>. Use for distributing slamdunk analysis on a cluster (index is 1-based)."
    skip_sam: "Output BAM while mapping. Slower but, uses less hard disk."
    files: "Single csv/tsv file (recommended) containing all sample files and sample info or a list of all sample BAM/FASTA(gz)/FASTQ(gz) files"
  }
}