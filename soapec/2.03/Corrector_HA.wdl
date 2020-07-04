version 1.0

task CorrectorHA {
  input {
    Int? set_size_default_note
    Int? set_cutoff_default
    Int? set_minimum_length_continuous
    Int? set_change_set
    Int? set_maximum_number
    Int? set_remain_data
    Int? set_ascii_shift
    Int? set_trim_suspicious
    Int? set_trim_bases
    Int? set_quality_threshold
    Int? set_length_ends
    Int? set_minimum_length_read
    Int? set_number_default
    Int? set_convert_read
    Int? set_output_default_note
    String? option
    String prefix_dot_freq_do_tgz
    String reads_file_list
  }
  command <<<
    Corrector_HA \
      ~{option} \
      ~{prefix_dot_freq_do_tgz} \
      ~{reads_file_list} \
      ~{if defined(set_size_default_note) then ("-k " +  '"' + set_size_default_note + '"') else ""} \
      ~{if defined(set_cutoff_default) then ("-l " +  '"' + set_cutoff_default + '"') else ""} \
      ~{if defined(set_minimum_length_continuous) then ("-m " +  '"' + set_minimum_length_continuous + '"') else ""} \
      ~{if defined(set_change_set) then ("-c " +  '"' + set_change_set + '"') else ""} \
      ~{if defined(set_maximum_number) then ("-n " +  '"' + set_maximum_number + '"') else ""} \
      ~{if defined(set_remain_data) then ("-a " +  '"' + set_remain_data + '"') else ""} \
      ~{if defined(set_ascii_shift) then ("-Q " +  '"' + set_ascii_shift + '"') else ""} \
      ~{if defined(set_trim_suspicious) then ("-e " +  '"' + set_trim_suspicious + '"') else ""} \
      ~{if defined(set_trim_bases) then ("-w " +  '"' + set_trim_bases + '"') else ""} \
      ~{if defined(set_quality_threshold) then ("-q " +  '"' + set_quality_threshold + '"') else ""} \
      ~{if defined(set_length_ends) then ("-x " +  '"' + set_length_ends + '"') else ""} \
      ~{if defined(set_minimum_length_read) then ("-r " +  '"' + set_minimum_length_read + '"') else ""} \
      ~{if defined(set_number_default) then ("-t " +  '"' + set_number_default + '"') else ""} \
      ~{if defined(set_convert_read) then ("-j " +  '"' + set_convert_read + '"') else ""} \
      ~{if defined(set_output_default_note) then ("-o " +  '"' + set_output_default_note + '"') else ""}
  >>>
  parameter_meta {
    set_size_default_note: "Set kmer size, default=17. Note: this value must be set to be same as that used in Kmer_freq program."
    set_cutoff_default: "Set the low frequency cutoff, default=3. Note: the Kmers with frequency lower than(<=) this cutoff will be taken as suspicious Kmers, while the others as credible Kmers."
    set_minimum_length_continuous: "Set the minimum length of a continuous high-freq-kmer region, default=10. Note: use the Branch and bounding tree method, needs a continuous high frequency region as the starting point. Here we set the minimum Kmer  number in the continuous high-freq-kmer region."
    set_change_set: "Set the maximum change allowed in one read, default=2. Note: set the allowed base number to be changed, when achieve this cutoff, the program will turn to trim data instead of correction."
    set_maximum_number: "Set the maximum node number allowed in the branch and bound tree, default=15000000. Note: this setting affects the maximum memory that will be used."
    set_remain_data: "Set whether remain all the data(1) or not(0), default=0. Note: 1:remain all the data, 0:trim some low quality and suspicious data to get more accurate data; if set '1', no need to set -x and -r"
    set_ascii_shift: "Set the ASCII shift of the quality value(Quality_shift), default=64. Note: usually 64 or 33 for Illumina data."
    set_trim_suspicious: "Set whether trim(1) suspicious region at the end of reads according to Q_value<=2 or not(0), default=0. Note: 0:no, trim low quality and suspicious data directly; 1:yes, just trim  Q_value<=2 continues region."
    set_trim_bases: "Set whether trim(1) error bases with Q_value<=2 instead of correct(0) it , default=0. Note: when base in Q_value<=2 continues region is detected error base,  0:correct this base; 1:trim this end of reads."
    set_quality_threshold: "Set Quality threshold of error bases, default=40. Note: bases with quality value higher than this threshold will not be  corrected when using BBT method."
    set_length_ends: "Set the trimmed length at low-quality ends instead of correct them, default=KmerSize/2. Note: on the trimmed ends or real ends of reads, sequencing errors tend to be  concentrate, and is hard to correct all of them. In order to get higher accuracy in the final result, we further trimmed some length at these low-quality regions."
    set_minimum_length_read: "Set the minimum length of trimmed read, default=50. Note:  This value set the minimum length of final reads that will be output."
    set_number_default: "Set the thread number, default=1. Note: the more thread number, the high speed, however, this should be less than  the number of CPU cores."
    set_convert_read: "Set whether convert read1 and read2 corrected file into Pair-end file: 1, yes, 0, no; default=1. Note: program may discard some low quality reads in corrected file, it should be convert into Pair-end file for using in some other porgram(for example: SOAPdenovo), pair and single file as the result file when it set to \"-j 1\". If you have only  single-end reads, please do not use the function, that is, set option \"-j 0\". The default value is to deal with paired-end reads."
    set_output_default_note: "Set output file format, default=1. Note: 0, fasta compressed file(*.fa.gz); 1, fastq compressed file(*.fq.gz); 2, fasta text file(*.fa); 3, fastq text file(*.fq). If input read files are in fasta format and ouput in fastq format, program will output all quality char=40+Quality_shift."
    option: ""
    prefix_dot_freq_do_tgz: ""
    reads_file_list: ""
  }
}