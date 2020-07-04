version 1.0

task SlamdunkMap {
  input {
    String? reference
    String? output_dir
    String? trim_five_p
    String? top_n
    Int? max_polya
    String? threads
    Boolean? quant_seq
    Boolean? end_to_end
    String? sample_name
    String? sample_type
    String? sample_time
    String? sample_index
    Boolean? skip_sam
    File files
  }
  command <<<
    slamdunk map \
      ~{files} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(output_dir) then ("--outputDir " +  '"' + output_dir + '"') else ""} \
      ~{if defined(trim_five_p) then ("--trim-5p " +  '"' + trim_five_p + '"') else ""} \
      ~{if defined(top_n) then ("--topn " +  '"' + top_n + '"') else ""} \
      ~{if defined(max_polya) then ("--max-polya " +  '"' + max_polya + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{true="--quantseq" false="" quant_seq} \
      ~{true="--endtoend" false="" end_to_end} \
      ~{if defined(sample_name) then ("--sampleName " +  '"' + sample_name + '"') else ""} \
      ~{if defined(sample_type) then ("--sampleType " +  '"' + sample_type + '"') else ""} \
      ~{if defined(sample_time) then ("--sampleTime " +  '"' + sample_time + '"') else ""} \
      ~{if defined(sample_index) then ("--sample-index " +  '"' + sample_index + '"') else ""} \
      ~{true="--skip-sam" false="" skip_sam}
  >>>
  parameter_meta {
    reference: "Reference fasta file"
    output_dir: "Output directory for mapped BAM files."
    trim_five_p: "Number of bp removed from 5' end of all reads. (default: 12)"
    top_n: "Max. number of alignments to report per read (default: 1)"
    max_polya: "Max number of As at the 3' end of a read. (default: 4)"
    threads: "Thread number (default: 1)"
    quant_seq: "Run plain Quantseq alignment without SLAM-seq scoring (default: False)"
    end_to_end: "Use a end to end alignment algorithm for mapping. (default: False)"
    sample_name: "Use this sample name for all supplied samples (default: None)"
    sample_type: "Use this sample type for all supplied samples (default: pulse)"
    sample_time: "Use this sample time for all supplied samples (default: 0)"
    sample_index: "Run analysis only for sample <i>. Use for distributing slamdunk analysis on a cluster (index is 1-based). (default: -1)"
    skip_sam: "Output BAM while mapping. Slower but, uses less hard disk. (default: False)"
    files: "Single csv/tsv file (recommended) containing all sample files and sample info or a list of all sample BAM/FASTA(gz)/FASTQ(gz) files"
  }
}