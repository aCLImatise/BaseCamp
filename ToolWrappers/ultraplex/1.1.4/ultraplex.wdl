version 1.0

task Ultraplex {
  input {
    File? input_fast_q
    String? barcodes
    Directory? optional_output_directory
    Boolean? m_five
    Boolean? m_three
    Boolean? phred_quality_score
    Boolean? threads
    Boolean? sequencing_adapter_trim
    Boolean? prefix_output_sequences
    Boolean? s_batch_compression
    Boolean? ultra
    Boolean? ignore_space_warning
    Boolean? minimum_length_final
    Boolean? q_five
    Boolean? i_two
    Boolean? a_two
    Boolean? mt
    Boolean? ignore_no_match
    Directory? directory
  }
  command <<<
    ultraplex \
      ~{directory} \
      ~{if defined(input_fast_q) then ("--inputfastq " +  '"' + input_fast_q + '"') else ""} \
      ~{if defined(barcodes) then ("--barcodes " +  '"' + barcodes + '"') else ""} \
      ~{if (optional_output_directory) then "-d" else ""} \
      ~{if (m_five) then "-m5" else ""} \
      ~{if (m_three) then "-m3" else ""} \
      ~{if (phred_quality_score) then "-q" else ""} \
      ~{if (threads) then "-t" else ""} \
      ~{if (sequencing_adapter_trim) then "-a" else ""} \
      ~{if (prefix_output_sequences) then "-o" else ""} \
      ~{if (s_batch_compression) then "--sbatchcompression" else ""} \
      ~{if (ultra) then "--ultra" else ""} \
      ~{if (ignore_space_warning) then "--ignore_space_warning" else ""} \
      ~{if (minimum_length_final) then "-l" else ""} \
      ~{if (q_five) then "-q5" else ""} \
      ~{if (i_two) then "-i2" else ""} \
      ~{if (a_two) then "-a2" else ""} \
      ~{if (mt) then "-mt" else ""} \
      ~{if (ignore_no_match) then "--ignore_no_match" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/ultraplex:1.1.4--py38h0213d0e_0"
  }
  parameter_meta {
    input_fast_q: "fastq file to be demultiplexed"
    barcodes: "barcodes for demultiplexing in csv format"
    optional_output_directory: "[DIRECTORY], --directory [DIRECTORY]\\noptional output directory"
    m_five: "[FIVEPRIMEMISMATCHES], --fiveprimemismatches [FIVEPRIMEMISMATCHES]\\nnumber of mismatches allowed for 5prime barcode\\n[DEFAULT 1]"
    m_three: "[THREEPRIMEMISMATCHES], --threeprimemismatches [THREEPRIMEMISMATCHES]\\nnumber of mismatches allowed for 3prime barcode\\n[DEFAULT 0]"
    phred_quality_score: "[PHREDQUALITY], --phredquality [PHREDQUALITY]\\nphred quality score for 3prime end trimming"
    threads: "[THREADS], --threads [THREADS]\\nthreads [DEFAULT 4]"
    sequencing_adapter_trim: "[ADAPTER], --adapter [ADAPTER]\\nsequencing adapter to trim [DEFAULT Illumina\\nAGATCGGAAGAGCGGTTCAG]"
    prefix_output_sequences: "[OUTPUTPREFIX], --outputprefix [OUTPUTPREFIX]\\nprefix for output sequences [DEFAULT demux]"
    s_batch_compression: "whether to compress output fastq using SLURM sbatch"
    ultra: "whether to use ultra mode, which is faster but makes\\nvery large temporary files"
    ignore_space_warning: "whether to ignore warnings that there is not enough\\nfree space"
    minimum_length_final: "[FINAL_MIN_LENGTH], --final_min_length [FINAL_MIN_LENGTH]\\nminimum length of the final outputted reads"
    q_five: "[PHREDQUALITY_5_PRIME], --phredquality_5_prime [PHREDQUALITY_5_PRIME]\\nquality trimming minimum score from 5' end - use with\\ncaution!"
    i_two: "[INPUT_2], --input_2 [INPUT_2]\\nOptional second fastq.gz input for paired end data"
    a_two: "[ADAPTER2], --adapter2 [ADAPTER2]\\nsequencing adaptor to trim for the reverse read\\n[Default AGATCGGAAGAGCGTCGTG]"
    mt: "[MIN_TRIM], --min_trim [MIN_TRIM]\\nWhen using single end reads for 3' demultiplexing,\\nthis is the minimum adapter trimming amount for a\\n3'barcode to be detected. Default = 3"
    ignore_no_match: "Do not write reads for which there is no match.\\n"
    directory: ""
  }
  output {
    File out_stdout = stdout()
    Directory out_optional_output_directory = "${in_optional_output_directory}"
  }
}