version 1.0

task CorrectorHA {
  input {
    Int? set_kmer_size
    Int? set_frequency_cutoff
    Int? set_minimum_length_defaultnote
    Int? set_maximum_change
    Int? set_maximum_number
    Int? set_remain_data
    Int? set_ascii_shift
    Int? set_trim_region
    Int? set_trim_bases
    Int? set_quality_threshold
    Int? set_trimmed_length
    Int? set_minimum_length_trimmed
    Int? set_thread_number
    Int? set_convert_read
    Int? set_file_format
    String prefix_dot_freq_do_tgz
    String reads_file_list
  }
  command <<<
    Corrector_HA \
      ~{prefix_dot_freq_do_tgz} \
      ~{reads_file_list} \
      ~{if defined(set_kmer_size) then ("-k " +  '"' + set_kmer_size + '"') else ""} \
      ~{if defined(set_frequency_cutoff) then ("-l " +  '"' + set_frequency_cutoff + '"') else ""} \
      ~{if defined(set_minimum_length_defaultnote) then ("-m " +  '"' + set_minimum_length_defaultnote + '"') else ""} \
      ~{if defined(set_maximum_change) then ("-c " +  '"' + set_maximum_change + '"') else ""} \
      ~{if defined(set_maximum_number) then ("-n " +  '"' + set_maximum_number + '"') else ""} \
      ~{if defined(set_remain_data) then ("-a " +  '"' + set_remain_data + '"') else ""} \
      ~{if defined(set_ascii_shift) then ("-Q " +  '"' + set_ascii_shift + '"') else ""} \
      ~{if defined(set_trim_region) then ("-e " +  '"' + set_trim_region + '"') else ""} \
      ~{if defined(set_trim_bases) then ("-w " +  '"' + set_trim_bases + '"') else ""} \
      ~{if defined(set_quality_threshold) then ("-q " +  '"' + set_quality_threshold + '"') else ""} \
      ~{if defined(set_trimmed_length) then ("-x " +  '"' + set_trimmed_length + '"') else ""} \
      ~{if defined(set_minimum_length_trimmed) then ("-r " +  '"' + set_minimum_length_trimmed + '"') else ""} \
      ~{if defined(set_thread_number) then ("-t " +  '"' + set_thread_number + '"') else ""} \
      ~{if defined(set_convert_read) then ("-j " +  '"' + set_convert_read + '"') else ""} \
      ~{if defined(set_file_format) then ("-o " +  '"' + set_file_format + '"') else ""}
  >>>
  parameter_meta {
    set_kmer_size: "Set kmer size, default=17.\\nNote: this value must be set to be same as that used in Kmer_freq program."
    set_frequency_cutoff: "Set the low frequency cutoff, default=3.\\nNote: the Kmers with frequency lower than(<=) this cutoff will be taken as\\nsuspicious Kmers, while the others as credible Kmers."
    set_minimum_length_defaultnote: "Set the minimum length of a continuous high-freq-kmer region, default=10.\\nNote: use the Branch and bounding tree method, needs a continuous high\\nfrequency region as the starting point. Here we set the minimum Kmer\\nnumber in the continuous high-freq-kmer region."
    set_maximum_change: "Set the maximum change allowed in one read, default=2.\\nNote: set the allowed base number to be changed, when achieve this cutoff,\\nthe program will turn to trim data instead of correction."
    set_maximum_number: "Set the maximum node number allowed in the branch and bound tree, default=15000000.\\nNote: this setting affects the maximum memory that will be used."
    set_remain_data: "Set whether remain all the data(1) or not(0), default=0.\\nNote: 1:remain all the data, 0:trim some low quality and suspicious data\\nto get more accurate data; if set '1', no need to set -x and -r"
    set_ascii_shift: "Set the ASCII shift of the quality value(Quality_shift), default=64.\\nNote: usually 64 or 33 for Illumina data."
    set_trim_region: "Set whether trim(1) suspicious region at the end of reads according to Q_value<=2 or not(0), default=0.\\nNote: 0:no, trim low quality and suspicious data directly; 1:yes, just trim\\nQ_value<=2 continues region."
    set_trim_bases: "Set whether trim(1) error bases with Q_value<=2 instead of correct(0) it , default=0.\\nNote: when base in Q_value<=2 continues region is detected error base,\\n0:correct this base; 1:trim this end of reads."
    set_quality_threshold: "Set Quality threshold of error bases, default=40.\\nNote: bases with quality value higher than this threshold will not be\\ncorrected when using BBT method."
    set_trimmed_length: "Set the trimmed length at low-quality ends instead of correct them, default=KmerSize/2.\\nNote: on the trimmed ends or real ends of reads, sequencing errors tend to be\\nconcentrate, and is hard to correct all of them. In order to get higher accuracy\\nin the final result, we further trimmed some length at these low-quality regions."
    set_minimum_length_trimmed: "Set the minimum length of trimmed read, default=50.\\nNote:  This value set the minimum length of final reads that will be output."
    set_thread_number: "Set the thread number, default=1.\\nNote: the more thread number, the high speed, however, this should be less than\\nthe number of CPU cores."
    set_convert_read: "Set whether convert read1 and read2 corrected file into Pair-end file: 1, yes, 0, no; default=1.\\nNote: program may discard some low quality reads in corrected file, it should be\\nconvert into Pair-end file for using in some other porgram(for example: SOAPdenovo),\\npair and single file as the result file when it set to \\\"-j 1\\\". If you have only\\nsingle-end reads, please do not use the function, that is, set option \\\"-j 0\\\".\\nThe default value is to deal with paired-end reads."
    set_file_format: "Set output file format, default=1.\\nNote: 0, fasta compressed file(*.fa.gz); 1, fastq compressed file(*.fq.gz);\\n2, fasta text file(*.fa); 3, fastq text file(*.fq). If input read files are in fasta\\nformat and ouput in fastq format, program will output all quality char=40+Quality_shift."
    prefix_dot_freq_do_tgz: ""
    reads_file_list: ""
  }
  output {
    File out_stdout = stdout()
  }
}