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
    Boolean? splice_junction_output
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
      ~{true="-f" false="" f} \
      ~{true="-f2" false="" f_two} \
      ~{if defined(mis) then ("-mis " +  '"' + mis + '"') else ""} \
      ~{if defined(max_dup) then ("-max_dup " +  '"' + max_dup + '"') else ""} \
      ~{true="-o" false="" alignment_filename_sam} \
      ~{true="-bo" false="" bo} \
      ~{true="-j" false="" splice_junction_output} \
      ~{true="-m" false="" output_multiple_alignments} \
      ~{true="-all_sj" false="" all_sj} \
      ~{true="-p" false="" pairedend_reads_interlaced} \
      ~{true="-unique" false="" unique} \
      ~{true="-max_intron" false="" max_intron} \
      ~{true="-min_intron" false="" min_intron} \
      ~{true="-v" false="" version} \
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
}