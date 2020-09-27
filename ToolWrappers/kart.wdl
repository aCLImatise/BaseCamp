version 1.0

task Kart {
  input {
    Int? number_of_threads
    Boolean? f
    Boolean? f_two
    File? alignment_filename_sam
    Boolean? bo
    Boolean? output_multiple_alignments
    Int? max_gaps_indels
    Boolean? pairedend_reads_interlaced
    Boolean? pac_bio
    Boolean? version
    String? i
  }
  command <<<
    kart \
      ~{if defined(number_of_threads) then ("-t " +  '"' + number_of_threads + '"') else ""} \
      ~{if (f) then "-f" else ""} \
      ~{if (f_two) then "-f2" else ""} \
      ~{if (alignment_filename_sam) then "-o" else ""} \
      ~{if (bo) then "-bo" else ""} \
      ~{if (output_multiple_alignments) then "-m" else ""} \
      ~{if defined(max_gaps_indels) then ("-g " +  '"' + max_gaps_indels + '"') else ""} \
      ~{if (pairedend_reads_interlaced) then "-p" else ""} \
      ~{if (pac_bio) then "-pacbio" else ""} \
      ~{if (version) then "-v" else ""} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""}
  >>>
  parameter_meta {
    number_of_threads: "number of threads [4]"
    f: "files with #1 mates reads (format:fa, fq, fq.gz)"
    f_two: "files with #2 mates reads (format:fa, fq, fq.gz)"
    alignment_filename_sam: "alignment filename in SAM format [output.sam]"
    bo: "alignment filename in BAM format"
    output_multiple_alignments: "output multiple alignments"
    max_gaps_indels: "max gaps (indels) [5]"
    pairedend_reads_interlaced: "paired-end reads are interlaced in the same file"
    pac_bio: "pacbio data"
    version: "version"
    i: ""
  }
  output {
    File out_stdout = stdout()
    File out_alignment_filename_sam = "${in_alignment_filename_sam}"
  }
}