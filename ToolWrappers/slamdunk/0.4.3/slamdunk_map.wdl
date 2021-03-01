version 1.0

task SlamdunkMap {
  input {
    File? reference
    Directory? output_dir
    Int? trim_five_p
    Int? top_n
    Int? max_polya
    Int? threads
    Boolean? quant_seq
    Boolean? end_to_end
    String? sample_name
    String? sample_type
    Int? sample_time
    Int? sample_index
    Boolean? skip_sam
    String files
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
      ~{if (quant_seq) then "--quantseq" else ""} \
      ~{if (end_to_end) then "--endtoend" else ""} \
      ~{if defined(sample_name) then ("--sampleName " +  '"' + sample_name + '"') else ""} \
      ~{if defined(sample_type) then ("--sampleType " +  '"' + sample_type + '"') else ""} \
      ~{if defined(sample_time) then ("--sampleTime " +  '"' + sample_time + '"') else ""} \
      ~{if defined(sample_index) then ("--sample-index " +  '"' + sample_index + '"') else ""} \
      ~{if (skip_sam) then "--skip-sam" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    reference: "Reference fasta file"
    output_dir: "Output directory for mapped BAM files."
    trim_five_p: "Number of bp removed from 5' end of all reads.\\n(default: 12)"
    top_n: "Max. number of alignments to report per read (default:\\n1)"
    max_polya: "Max number of As at the 3' end of a read. (default: 4)"
    threads: "Thread number (default: 1)"
    quant_seq: "Run plain Quantseq alignment without SLAM-seq scoring\\n(default: False)"
    end_to_end: "Use a end to end alignment algorithm for mapping.\\n(default: False)"
    sample_name: "Use this sample name for all supplied samples\\n(default: None)"
    sample_type: "Use this sample type for all supplied samples\\n(default: pulse)"
    sample_time: "Use this sample time for all supplied samples\\n(default: 0)"
    sample_index: "Run analysis only for sample <i>. Use for distributing\\nslamdunk analysis on a cluster (index is 1-based).\\n(default: -1)"
    skip_sam: "Output BAM while mapping. Slower but, uses less hard\\ndisk. (default: False)\\n"
    files: "Single csv/tsv file (recommended) containing all\\nsample files and sample info or a list of all sample\\nBAM/FASTA(gz)/FASTQ(gz) files"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_dir = "${in_output_dir}"
  }
}