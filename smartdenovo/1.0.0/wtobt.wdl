version 1.0

task Wtobt {
  input {
    String? long_reads_file
    String? long_reads_region
    String? overlap_files_readsttlentbegtendtreadsttlentbegtendtscoretidentityfloattmattmistinstdeltcigar
    Boolean? ouput_reads_regions
    Boolean? force_overwrite_output
    Boolean? trun_specical_trim
    Int? minimum_score_alignment
    Float? minimum_identity_alignment
    Int? maximum_margin_alignment
    Int? minimum_depth_overlap
  }
  command <<<
    wtobt \
      ~{if defined(long_reads_file) then ("-i " +  '"' + long_reads_file + '"') else ""} \
      ~{if defined(long_reads_region) then ("-b " +  '"' + long_reads_region + '"') else ""} \
      ~{if defined(overlap_files_readsttlentbegtendtreadsttlentbegtendtscoretidentityfloattmattmistinstdeltcigar) then ("-j " +  '"' + overlap_files_readsttlentbegtendtreadsttlentbegtendtscoretidentityfloattmattmistinstdeltcigar + '"') else ""} \
      ~{true="-o" false="" ouput_reads_regions} \
      ~{true="-f" false="" force_overwrite_output} \
      ~{true="-C" false="" trun_specical_trim} \
      ~{if defined(minimum_score_alignment) then ("-s " +  '"' + minimum_score_alignment + '"') else ""} \
      ~{if defined(minimum_identity_alignment) then ("-m " +  '"' + minimum_identity_alignment + '"') else ""} \
      ~{if defined(maximum_margin_alignment) then ("-w " +  '"' + maximum_margin_alignment + '"') else ""} \
      ~{if defined(minimum_depth_overlap) then ("-c " +  '"' + minimum_depth_overlap + '"') else ""}
  >>>
  parameter_meta {
    long_reads_file: "Long reads sequences file, + *"
    long_reads_region: "Long reads retained region, often from wtobt/wtcyc, + Format: read_name\toffset\tlength\toriginal_len"
    overlap_files_readsttlentbegtendtreadsttlentbegtendtscoretidentityfloattmattmistinstdeltcigar: "Overlap file(s), + * Format: reads1\t+/-\tlen1\tbeg1\tend1\treads2\t+/-\tlen2\tbeg2\tend2\tscore\tidentity<float>\tmat\tmis\tins\tdel\tcigar"
    ouput_reads_regions: "Ouput of reads' regions after trimming, -:stdout, * Format: read_name\toffset\tlength"
    force_overwrite_output: "Force overwrite output file"
    trun_specical_trim: "Trun off specical trim for reads contained by others One read (A) will not be trimmed when it is contained by another read (B). When trun on special trim (by default), if the B read is trimmed, program will accordingly trim A read"
    minimum_score_alignment: "Minimum score of alignment, [200]"
    minimum_identity_alignment: "Minimum identity of alignment , [0.5]"
    maximum_margin_alignment: "Maximum margin of alignment, [200]"
    minimum_depth_overlap: "Minimum depth of overlap between anchored reads along reference read, to detect chimeric reads, [1]"
  }
}