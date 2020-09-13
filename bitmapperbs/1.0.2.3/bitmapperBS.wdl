version 1.0

task BitmapperBS {
  input {
    Boolean? index
    Boolean? index_folder
    Boolean? search
    Boolean? fast
    Boolean? sensitive
    Boolean? seq
    Boolean? seq_one
    Boolean? seq_two
    File? output_mapped_sequences
    Boolean? sam
    Boolean? bam
    Boolean? me_thy_out
    Boolean? set_distance_rate
    Boolean? min
    Boolean? max
    Boolean? threads
    Boolean? pb_at
    Boolean? unmapped_out
    Boolean? ambiguous_out
    File? mapstats
    Boolean? phred_three_three
    Boolean? phred_six_four
    Boolean? mp_max
    Boolean? mp_min
    Boolean? np
    Boolean? gap_open
    Boolean? gap_extension
  }
  command <<<
    bitmapperBS \
      ~{if (index) then "--index" else ""} \
      ~{if (index_folder) then "--index_folder" else ""} \
      ~{if (search) then "--search" else ""} \
      ~{if (fast) then "--fast" else ""} \
      ~{if (sensitive) then "--sensitive" else ""} \
      ~{if (seq) then "--seq" else ""} \
      ~{if (seq_one) then "--seq1" else ""} \
      ~{if (seq_two) then "--seq2" else ""} \
      ~{if (output_mapped_sequences) then "-o" else ""} \
      ~{if (sam) then "--sam" else ""} \
      ~{if (bam) then "--bam" else ""} \
      ~{if (me_thy_out) then "--methy_out" else ""} \
      ~{if (set_distance_rate) then "-e" else ""} \
      ~{if (min) then "--min" else ""} \
      ~{if (max) then "--max" else ""} \
      ~{if (threads) then "--threads" else ""} \
      ~{if (pb_at) then "--pbat" else ""} \
      ~{if (unmapped_out) then "--unmapped_out" else ""} \
      ~{if (ambiguous_out) then "--ambiguous_out" else ""} \
      ~{if (mapstats) then "--mapstats" else ""} \
      ~{if (phred_three_three) then "--phred33" else ""} \
      ~{if (phred_six_four) then "--phred64" else ""} \
      ~{if (mp_max) then "--mp_max" else ""} \
      ~{if (mp_min) then "--mp_min" else ""} \
      ~{if (np) then "--np" else ""} \
      ~{if (gap_open) then "--gap_open" else ""} \
      ~{if (gap_extension) then "--gap_extension" else ""}
  >>>
  parameter_meta {
    index: "[file]         Generate an index from the specified fasta file."
    index_folder: "[folder]Set the folder that stores the genome indexes. If this option is not set,\\nthe indexes would be stores in the same folder of genome (input fasta file)."
    search: "[file/folder] Search in the specified genome. If the indexes of this genome are built without \\\"--index_folder\\\",\\nplease provide the path to the fasta file of genome (index files should be in the same folder).\\nOtherwise please provide the path to the index folder (set by \\\"--index_folder\\\" during indexing)."
    fast: "Set bitmapperBS in fast mode (default). This option is only available in paired-end mode."
    sensitive: "Set bitmapperBS in sensitive mode. This option is only available in paired-end mode."
    seq: "[file]           Input sequences in fastq/fastq.gz format [file]. This option is used\\nfor single-end reads."
    seq_one: "[file]          Input sequences in fastq/fastq.gz format [file] (First file).\\nUse this option to indicate the first file of\\npaired-end reads."
    seq_two: "[file]          Input sequences in fastq/fastq.gz format [file] (Second file).\\nUse this option to indicate the second file of\\npaired-end reads."
    output_mapped_sequences: "[file]              Output of the mapped sequences in SAM or BAM format. The default is \\\"stdout\\\" (standard output) in SAM format."
    sam: "Output mapping results in SAM format (default)."
    bam: "Output mapping results in BAM format."
    me_thy_out: "Output the intermediate methylation result files, instead of SAM or BAM files."
    set_distance_rate: "[float]             Set the edit distance rate of read length. This value is between 0 and 1 (default: 0.08 = 8% of read length)."
    min: "[int]            Min observed template length between a pair of end sequences (default: 0)."
    max: "[int]            Max observed template length between a pair of end sequences (default: 500)."
    threads: "[int]    Set the number of CPU threads (default: 1)."
    pb_at: "Mapping the BS-seq from pbat protocol."
    unmapped_out: "Report unmapped reads."
    ambiguous_out: "Random report one of hit of each ambiguous mapped read."
    mapstats: "[file]      Output the statistical information of read alignment into file."
    phred_three_three: "Input read qualities are encoded by Phred33 (default)."
    phred_six_four: "Input read qualities are encoded by Phred64."
    mp_max: "[INT]         Maximum mismatch penalty (default: 6)."
    mp_min: "[INT]         Minimum mismatch penalty (default: 2)."
    np: "[INT]             Ambiguous character (e.g., N) penalty (default: 1)."
    gap_open: "[INT]       Gap open penalty (default: 5)."
    gap_extension: "[INT]  Gap extension penalty (default: 3)."
  }
  output {
    File out_stdout = stdout()
    File out_output_mapped_sequences = "${in_output_mapped_sequences}"
    File out_mapstats = "${in_mapstats}"
  }
}