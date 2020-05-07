version 1.0

task Counterr {
  input {
    String bamBam
    String genomeGenome
    String outputOutputDir
    Boolean noNoFigures
    String baiBai
    Boolean verboseVerbose
    String lenLenMinContig
    String mapqMapqThRes
    String lenLenMinRead
    String lenLenMinAln
    String bitBitFlag
    String lenLenMinHp
    String lenLenMaxHp
    String lenLenContextSub
    String lenLenContextIns
    String lenLenMaxInDel
    String lenLenTrimContigEdge
    Boolean useUseRecorded
    String limLim
    String numNumPtsMax
    String reportReportName
  }
  command <<<
    counterr \
      ~{if defined(bamBam) then ("-bam " +  '"' + bamBam + '"') else ""} \
      ~{if defined(genomeGenome) then ("-genome " +  '"' + genomeGenome + '"') else ""} \
      ~{if defined(outputOutputDir) then ("-output_dir " +  '"' + outputOutputDir + '"') else ""} \
      ~{true="-no_figures" false="" noNoFigures} \
      ~{if defined(baiBai) then ("-bai " +  '"' + baiBai + '"') else ""} \
      ~{true="-verbose" false="" verboseVerbose} \
      ~{if defined(lenLenMinContig) then ("-len_min_contig " +  '"' + lenLenMinContig + '"') else ""} \
      ~{if defined(mapqMapqThRes) then ("-mapq_thres " +  '"' + mapqMapqThRes + '"') else ""} \
      ~{if defined(lenLenMinRead) then ("-len_min_read " +  '"' + lenLenMinRead + '"') else ""} \
      ~{if defined(lenLenMinAln) then ("-len_min_aln " +  '"' + lenLenMinAln + '"') else ""} \
      ~{if defined(bitBitFlag) then ("-bitflag " +  '"' + bitBitFlag + '"') else ""} \
      ~{if defined(lenLenMinHp) then ("-len_min_hp " +  '"' + lenLenMinHp + '"') else ""} \
      ~{if defined(lenLenMaxHp) then ("-len_max_hp " +  '"' + lenLenMaxHp + '"') else ""} \
      ~{if defined(lenLenContextSub) then ("-len_context_sub " +  '"' + lenLenContextSub + '"') else ""} \
      ~{if defined(lenLenContextIns) then ("-len_context_ins " +  '"' + lenLenContextIns + '"') else ""} \
      ~{if defined(lenLenMaxInDel) then ("-len_max_indel " +  '"' + lenLenMaxInDel + '"') else ""} \
      ~{if defined(lenLenTrimContigEdge) then ("-len_trim_contig_edge " +  '"' + lenLenTrimContigEdge + '"') else ""} \
      ~{true="-use_recorded" false="" useUseRecorded} \
      ~{if defined(limLim) then ("-lim " +  '"' + limLim + '"') else ""} \
      ~{if defined(numNumPtsMax) then ("-num_pts_max " +  '"' + numNumPtsMax + '"') else ""} \
      ~{if defined(reportReportName) then ("-report_name " +  '"' + reportReportName + '"') else ""}
  >>>
}