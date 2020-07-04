version 1.0

task CloneFilter {
  input {
    Boolean? inline_null
    Boolean? null_inline
    Boolean? null_index
    Boolean? index_null
    Boolean? inline_inline
    Boolean? index_index
    Boolean? inline_index
    Boolean? index_inline
  }
  command <<<
    clone_filter \
      ~{true="--inline-null" false="" inline_null} \
      ~{true="--null-inline" false="" null_inline} \
      ~{true="--null-index" false="" null_index} \
      ~{true="--index-null" false="" index_null} \
      ~{true="--inline-inline" false="" inline_inline} \
      ~{true="--index-index" false="" index_index} \
      ~{true="--inline-index" false="" inline_index} \
      ~{true="--index-inline" false="" index_inline}
  >>>
  parameter_meta {
    inline_null: ":   random oligo is inline with sequence, occurs only on single-end read (default)."
    null_inline: ":   random oligo is inline with sequence, occurs only on the paired-end read."
    null_index: ":    random oligo is provded in FASTQ header (Illumina i7 read if both i5 and i7 read are provided)."
    index_null: ":    random oligo is provded in FASTQ header (Illumina i5 or i7 read)."
    inline_inline: ": random oligo is inline with sequence, occurs on single and paired-end read."
    index_index: ":   random oligo is provded in FASTQ header (Illumina i5 and i7 read)."
    inline_index: ":  random oligo is inline with sequence on single-end read and second oligo occurs in FASTQ header."
    index_inline: ":  random oligo occurs in FASTQ header (Illumina i5 or i7 read) and is inline with sequence on single-end read (if single read data) or paired-end read (if paired data)."
  }
}