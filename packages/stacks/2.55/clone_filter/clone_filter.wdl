version 1.0

task CloneFilter {
  input {
    Int? oligo_len_one
    Int? oligo_len_two
    Boolean? retain_oligo
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
      ~{if defined(oligo_len_one) then ("--oligo-len-1 " +  '"' + oligo_len_one + '"') else ""} \
      ~{if defined(oligo_len_two) then ("--oligo-len-2 " +  '"' + oligo_len_two + '"') else ""} \
      ~{if (retain_oligo) then "--retain-oligo" else ""} \
      ~{if (inline_null) then "--inline-null" else ""} \
      ~{if (null_inline) then "--null-inline" else ""} \
      ~{if (null_index) then "--null-index" else ""} \
      ~{if (index_null) then "--index-null" else ""} \
      ~{if (inline_inline) then "--inline-inline" else ""} \
      ~{if (index_index) then "--index-index" else ""} \
      ~{if (inline_index) then "--inline-index" else ""} \
      ~{if (index_inline) then "--index-inline" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/stacks:2.55--he513fc3_0"
  }
  parameter_meta {
    oligo_len_one: ": length of the single-end oligo sequence in data set."
    oligo_len_two: ": length of the paired-end oligo sequence in data set."
    retain_oligo: ": do not trim off the random oligo sequence (if oligo is inline)."
    inline_null: ":   random oligo is inline with sequence, occurs only on single-end read (default)."
    null_inline: ":   random oligo is inline with sequence, occurs only on the paired-end read."
    null_index: ":    random oligo is provded in FASTQ header (Illumina i7 read if both i5 and i7 read are provided)."
    index_null: ":    random oligo is provded in FASTQ header (Illumina i5 or i7 read)."
    inline_inline: ": random oligo is inline with sequence, occurs on single and paired-end read."
    index_index: ":   random oligo is provded in FASTQ header (Illumina i5 and i7 read)."
    inline_index: ":  random oligo is inline with sequence on single-end read and second oligo occurs in FASTQ header."
    index_inline: ":  random oligo occurs in FASTQ header (Illumina i5 or i7 read) and is inline with sequence on single-end read (if single read data) or paired-end read (if paired data)."
  }
  output {
    File out_stdout = stdout()
  }
}