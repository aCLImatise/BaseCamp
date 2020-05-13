version 1.0

task TransMap2hints.pl {
  input {
    String keepKeepIds
    String priorityPriority
    String epEpCutOff
    String epEpMargin
    String ipIpCutOff
    String uUTrendCutOff
    String minMinIntronLen
    String minMinIntronLenUtr
    String startStartStopRadius
    String tssTssTtsRadius
    String sourceSource
  }
  command <<<
    transMap2hints.pl \
      ~{if defined(keepKeepIds) then ("--keepids " +  '"' + keepKeepIds + '"') else ""} \
      ~{if defined(priorityPriority) then ("--priority " +  '"' + priorityPriority + '"') else ""} \
      ~{if defined(epEpCutOff) then ("--ep_cutoff " +  '"' + epEpCutOff + '"') else ""} \
      ~{if defined(epEpMargin) then ("--ep_margin " +  '"' + epEpMargin + '"') else ""} \
      ~{if defined(ipIpCutOff) then ("--ip_cutoff " +  '"' + ipIpCutOff + '"') else ""} \
      ~{if defined(uUTrendCutOff) then ("--utrend_cutoff " +  '"' + uUTrendCutOff + '"') else ""} \
      ~{if defined(minMinIntronLen) then ("--min_intron_len " +  '"' + minMinIntronLen + '"') else ""} \
      ~{if defined(minMinIntronLenUtr) then ("--min_intron_len_utr " +  '"' + minMinIntronLenUtr + '"') else ""} \
      ~{if defined(startStartStopRadius) then ("--start_stop_radius " +  '"' + startStartStopRadius + '"') else ""} \
      ~{if defined(tssTssTtsRadius) then ("--tss_tts_radius " +  '"' + tssTssTtsRadius + '"') else ""} \
      ~{if defined(sourceSource) then ("--source " +  '"' + sourceSource + '"') else ""}
  >>>
}