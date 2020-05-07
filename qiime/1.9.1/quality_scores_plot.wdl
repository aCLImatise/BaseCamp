version 1.0

task QualityScoresPlot.py {
  input {
    String qualQualFp
  }
  command <<<
    quality_scores_plot.py \
      ~{if defined(qualQualFp) then ("--qual_fp " +  '"' + qualQualFp + '"') else ""}
  >>>
}