version 1.0

task Telseq {
  input {
    File? bam_list
    File? output_dir
    Boolean? remove_header_line
    Boolean? merge_read_groups
    Boolean? read_groups_treat
    Boolean? threshold_amount_ttagggccctaa
    Boolean? read_length_default
    Boolean? use_user_specified
    String? exo_me_bed
    Boolean? consider_bams_is
    Float in_dot_one_dot_bam
    Float in_dot_two_dot_bam
  }
  command <<<
    telseq \
      ~{in_dot_one_dot_bam} \
      ~{in_dot_two_dot_bam} \
      ~{if defined(bam_list) then ("--bamlist " +  '"' + bam_list + '"') else ""} \
      ~{if defined(output_dir) then ("--output_dir " +  '"' + output_dir + '"') else ""} \
      ~{if (remove_header_line) then "-H" else ""} \
      ~{if (merge_read_groups) then "-m" else ""} \
      ~{if (read_groups_treat) then "-u" else ""} \
      ~{if (threshold_amount_ttagggccctaa) then "-k" else ""} \
      ~{if (read_length_default) then "-r" else ""} \
      ~{if (use_user_specified) then "-z" else ""} \
      ~{if defined(exo_me_bed) then ("--exomebed " +  '"' + exo_me_bed + '"') else ""} \
      ~{if (consider_bams_is) then "-w" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    bam_list: "a file that contains a list of file paths of BAMs. It should has only one column,\\nwith each row a BAM file path. -f has higher priority than <in.bam>. When specified,\\n<in.bam> are ignored."
    output_dir: "output file for results. Ignored when input is from stdin, in which case output will be stdout."
    remove_header_line: "remove header line, which is printed by default."
    merge_read_groups: "merge read groups by taking a weighted average across read groups of a sample, weighted by\\nthe total number of reads in read group. Default is to output each readgroup separately."
    read_groups_treat: "ignore read groups. Treat all reads in BAM as if they were from a same read group."
    threshold_amount_ttagggccctaa: "threshold of the amount of TTAGGG/CCCTAA repeats in read for a read to be considered telomeric. default = 7."
    read_length_default: "read length. default = 100"
    use_user_specified: "use user specified pattern for searching [ATGC]*."
    exo_me_bed: "specifiy exome regions in BED format. These regions will be excluded"
    consider_bams_is: ",                      consider BAMs in the speicfied bamlist as one single BAM. This is useful when\\nthe initial alignemt is separated for some reason, such as one for mapped and one for ummapped reads."
    in_dot_one_dot_bam: ""
    in_dot_two_dot_bam: ""
  }
  output {
    File out_stdout = stdout()
  }
}