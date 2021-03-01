version 1.0

task CorrectorAR {
  input {
    Int? set_size_defaultnote
    Int? set_cutoff_consecutive
    Int? set_size_space_kmer
    Int? set_size_space_seed
    Int? set_cutoff_space
    Int? set_minimum_length_continuous
    Int? set_maximum_change
    Int? set_maximum_number
    Int? set_remain_data
    Int? set_ascii_shift
    Int? set_trim_region
    Int? set_trim_bases
    Int? set_quality_threshold
    Int? set_trimmed_length
    Int? set_minimum_length_defaultnote
    Int? set_thread_number
    Int? set_convert_read
    Int? set_output_file
    String prefix_dot_freq_dot_cz
    String prefix_dotfreqdotczdotlen
    String? prefix_dot_space_dot_freq_dot_cz
    String? prefix_dot_space_dotfreqdotczdotlen
    String reads_file_list
  }
  command <<<
    Corrector_AR \
      ~{prefix_dot_freq_dot_cz} \
      ~{prefix_dotfreqdotczdotlen} \
      ~{prefix_dot_space_dot_freq_dot_cz} \
      ~{prefix_dot_space_dotfreqdotczdotlen} \
      ~{reads_file_list} \
      ~{if defined(set_size_defaultnote) then ("-k " +  '"' + set_size_defaultnote + '"') else ""} \
      ~{if defined(set_cutoff_consecutive) then ("-l " +  '"' + set_cutoff_consecutive + '"') else ""} \
      ~{if defined(set_size_space_kmer) then ("-K " +  '"' + set_size_space_kmer + '"') else ""} \
      ~{if defined(set_size_space_seed) then ("-s " +  '"' + set_size_space_seed + '"') else ""} \
      ~{if defined(set_cutoff_space) then ("-L " +  '"' + set_cutoff_space + '"') else ""} \
      ~{if defined(set_minimum_length_continuous) then ("-m " +  '"' + set_minimum_length_continuous + '"') else ""} \
      ~{if defined(set_maximum_change) then ("-c " +  '"' + set_maximum_change + '"') else ""} \
      ~{if defined(set_maximum_number) then ("-n " +  '"' + set_maximum_number + '"') else ""} \
      ~{if defined(set_remain_data) then ("-a " +  '"' + set_remain_data + '"') else ""} \
      ~{if defined(set_ascii_shift) then ("-Q " +  '"' + set_ascii_shift + '"') else ""} \
      ~{if defined(set_trim_region) then ("-e " +  '"' + set_trim_region + '"') else ""} \
      ~{if defined(set_trim_bases) then ("-w " +  '"' + set_trim_bases + '"') else ""} \
      ~{if defined(set_quality_threshold) then ("-q " +  '"' + set_quality_threshold + '"') else ""} \
      ~{if defined(set_trimmed_length) then ("-x " +  '"' + set_trimmed_length + '"') else ""} \
      ~{if defined(set_minimum_length_defaultnote) then ("-r " +  '"' + set_minimum_length_defaultnote + '"') else ""} \
      ~{if defined(set_thread_number) then ("-t " +  '"' + set_thread_number + '"') else ""} \
      ~{if defined(set_convert_read) then ("-j " +  '"' + set_convert_read + '"') else ""} \
      ~{if defined(set_output_file) then ("-o " +  '"' + set_output_file + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    set_size_defaultnote: "Set size of consecutive kmer, default=17.\\nNote: this value must be set to be same as that used in Kmer_freq program."
    set_cutoff_consecutive: "Set the low frequency cutoff of consecutive kmer, default=3.\\nNote: the consecutive Kmers with frequency lower than(<=) this cutoff will be taken as\\nfalse Kmers, while the others as authentic Kmers."
    set_size_space_kmer: "Set size of space kmer, default=0.\\nNote: this value must be set to be same as that used in Kmer_freq program.\\nIf it is default value K=0, program will not use space kmer in error correction."
    set_size_space_seed: "Set the size of space seed, default=0.\\nNote: this vaule must be set to be same as that used in Kmer_freq program."
    set_cutoff_space: "Set the low frequency cutoff of space kmer, default=3.\\nNote: the space Kmers with frequency lower than(<=) this cutoff will be taken as\\nfalse Kmers, while the others as authentic Kmers."
    set_minimum_length_continuous: "Set the minimum length of a continuous high-freq-kmer region, default=10.\\nNote: use the Branch and bounding tree method, needs a continuous high\\nfrequency region as the starting point. Here we set the minimum Kmer\\nnumber in the continuous high-freq-kmer region."
    set_maximum_change: "Set the maximum change allowed in one read, default=2.\\nNote: set the allowed base number to be changed, when achieve this cutoff,\\nthe program will turn to trim data instead of correction."
    set_maximum_number: "Set the maximum node number allowed in the branch and bound tree, default=15000000.\\nNote: this setting affects the maximum memory that will be used."
    set_remain_data: "Set whether remain all the data(1) or not(0), default=0.\\nNote: 1:remain all the data, 0:trim some low quality and suspicious data\\nto get more accurate data; if set '1', no need to set -x and -r"
    set_ascii_shift: "Set the ASCII shift of the quality value(Quality_shift), default=64.\\nNote: usually 64 or 33 for Illumina data."
    set_trim_region: "Set whether trim(1) suspicious region at the end of reads according to Q_value<=2 or not(0), default=0.\\nNote: 0:no, trim low quality and suspicious data directly; 1:yes, just trim\\nQ_value<=2 continues region."
    set_trim_bases: "Set whether trim(1) error bases with Q_value<=2 instead of correct(0) it , default=0.\\nNote: when base in Q_value<=2 continues region is detected error base,\\n0:correct this base; 1:trim this end of reads."
    set_quality_threshold: "Set Quality threshold of error bases, default=40.\\nNote: bases with quality value higher than this threshold will not be\\ncorrected when using BBT method."
    set_trimmed_length: "Set the trimmed length at low-quality ends instead of correct them, default=KmerSize/2.\\nNote: on the trimmed ends or real ends of reads, sequencing errors tend to be\\nconcentrate, and is hard to correct all of them. In order to get higher accuracy\\nin the final result, we further trimmed some length at these low-quality regions."
    set_minimum_length_defaultnote: "Set the minimum length of trimmed read, default=50.\\nNote:  This value set the minimum length of final reads that will be output."
    set_thread_number: "Set the thread number, default=1.\\nNote: the more thread number, the high speed, however, this should be less than\\nthe number of CPU cores."
    set_convert_read: "Set whether convert read1 and read2 corrected file into Pair-end file: 1, yes, 0, no; default=1.\\nNote: program may discard some low quality reads in corrected file, it should be\\nconvert into Pair-end file for using in some other porgram(for example: SOAPdenovo),\\npair and single file as the result file when it set to \\\"-j 1\\\". If you have only\\nsingle-end reads, please do not use the function, that is, set option \\\"-j 0\\\".\\nThe default value is to deal with paired-end reads."
    set_output_file: "Set output file format, default=1.\\nNote: 0, fasta compressed file(*.fa.gz); 1, fastq compressed file(*.fq.gz);\\n2, fasta text file(*.fa); 3, fastq text file(*.fq). If input read files are in fasta\\nformat and ouput in fastq format, program will output all quality char=40+Quality_shift."
    prefix_dot_freq_dot_cz: ""
    prefix_dotfreqdotczdotlen: ""
    prefix_dot_space_dot_freq_dot_cz: ""
    prefix_dot_space_dotfreqdotczdotlen: ""
    reads_file_list: ""
  }
  output {
    File out_stdout = stdout()
  }
}