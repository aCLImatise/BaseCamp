version 1.0

task Dart {
  input {
    Int? number_of_threads
    Boolean? f
    Boolean? f_two
    Int? mis
    Int? max_dup
    Boolean? alignment_filename_sam
    Boolean? bo
    File? splice_junction_output
    Boolean? output_multiple_alignments
    Boolean? all_sj
    Boolean? pairedend_reads_interlaced
    Boolean? unique
    Boolean? max_intron
    Boolean? min_intron
    Boolean? version
    String? i
  }
  command <<<
    dart \
      ~{if defined(number_of_threads) then ("-t " +  '"' + number_of_threads + '"') else ""} \
      ~{if (f) then "-f" else ""} \
      ~{if (f_two) then "-f2" else ""} \
      ~{if defined(mis) then ("-mis " +  '"' + mis + '"') else ""} \
      ~{if defined(max_dup) then ("-max_dup " +  '"' + max_dup + '"') else ""} \
      ~{if (alignment_filename_sam) then "-o" else ""} \
      ~{if (bo) then "-bo" else ""} \
      ~{if (splice_junction_output) then "-j" else ""} \
      ~{if (output_multiple_alignments) then "-m" else ""} \
      ~{if (all_sj) then "-all_sj" else ""} \
      ~{if (pairedend_reads_interlaced) then "-p" else ""} \
      ~{if (unique) then "-unique" else ""} \
      ~{if (max_intron) then "-max_intron" else ""} \
      ~{if (min_intron) then "-min_intron" else ""} \
      ~{if (version) then "-v" else ""} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""}
  >>>
  parameter_meta {
    number_of_threads: "number of threads [4]"
    f: "files with #1 mates reads"
    f_two: "files with #2 mates reads"
    mis: "maximal number of mismatches in an alignment"
    max_dup: "maximal number of repetitive fragments (between 100-10000) [100]"
    alignment_filename_sam: "alignment filename in SAM format"
    bo: "alignment filename in BAM format"
    splice_junction_output: "splice junction output filename [junctions.tab]"
    output_multiple_alignments: "output multiple alignments [false]"
    all_sj: "detect all splice junction regardless of mapq score [false]"
    pairedend_reads_interlaced: "paired-end reads are interlaced in the same file"
    unique: "output unique alignments"
    max_intron: "the maximal intron size [500000]"
    min_intron: "the minimal intron size [10]"
    version: "version"
    i: ""
  }
  output {
    File out_stdout = stdout()
    File out_splice_junction_output = "${in_splice_junction_output}"
  }
}