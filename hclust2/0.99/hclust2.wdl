version 1.0

task Hclust2.py {
  input {
    Boolean iI
    Boolean oO
    Boolean legendLegendFile
    String inputInputType
    String outOutTable
    String fnameFnameRow
    String snameSnameRow
    String metadataMetadataRows
    String skipSkipRows
    String sSPerc
    String fFPerc
    String stopStop
    String fFTop
    String defDefNa
    String fFDistF
    String sSDistF
    String loadLoadDistMatrixF
    String loadLoadDistMatrixS
    String loadLoadPickledDistMatrixF
    String loadLoadPickledDistMatrixS
    String saveSavePickledDistMatrixF
    String saveSavePickledDistMatrixS
    Boolean noNoFClustering
    Boolean noNoPlotFClustering
    Boolean noNoSClustering
    Boolean noNoPlotSClustering
    String fFLinkage
    String sSLinkage
    String bottomBottomC
    String topTopC
    String nanNanC
  }
  command <<<
    hclust2.py \
      ~{true="-i" false="" iI} \
      ~{true="-o" false="" oO} \
      ~{true="--legend_file" false="" legendLegendFile} \
      ~{if defined(inputInputType) then ("--input_type " +  '"' + inputInputType + '"') else ""} \
      ~{if defined(outOutTable) then ("--out_table " +  '"' + outOutTable + '"') else ""} \
      ~{if defined(fnameFnameRow) then ("--fname_row " +  '"' + fnameFnameRow + '"') else ""} \
      ~{if defined(snameSnameRow) then ("--sname_row " +  '"' + snameSnameRow + '"') else ""} \
      ~{if defined(metadataMetadataRows) then ("--metadata_rows " +  '"' + metadataMetadataRows + '"') else ""} \
      ~{if defined(skipSkipRows) then ("--skip_rows " +  '"' + skipSkipRows + '"') else ""} \
      ~{if defined(sSPerc) then ("--sperc " +  '"' + sSPerc + '"') else ""} \
      ~{if defined(fFPerc) then ("--fperc " +  '"' + fFPerc + '"') else ""} \
      ~{if defined(stopStop) then ("--stop " +  '"' + stopStop + '"') else ""} \
      ~{if defined(fFTop) then ("--ftop " +  '"' + fFTop + '"') else ""} \
      ~{if defined(defDefNa) then ("--def_na " +  '"' + defDefNa + '"') else ""} \
      ~{if defined(fFDistF) then ("--f_dist_f " +  '"' + fFDistF + '"') else ""} \
      ~{if defined(sSDistF) then ("--s_dist_f " +  '"' + sSDistF + '"') else ""} \
      ~{if defined(loadLoadDistMatrixF) then ("--load_dist_matrix_f " +  '"' + loadLoadDistMatrixF + '"') else ""} \
      ~{if defined(loadLoadDistMatrixS) then ("--load_dist_matrix_s " +  '"' + loadLoadDistMatrixS + '"') else ""} \
      ~{if defined(loadLoadPickledDistMatrixF) then ("--load_pickled_dist_matrix_f " +  '"' + loadLoadPickledDistMatrixF + '"') else ""} \
      ~{if defined(loadLoadPickledDistMatrixS) then ("--load_pickled_dist_matrix_s " +  '"' + loadLoadPickledDistMatrixS + '"') else ""} \
      ~{if defined(saveSavePickledDistMatrixF) then ("--save_pickled_dist_matrix_f " +  '"' + saveSavePickledDistMatrixF + '"') else ""} \
      ~{if defined(saveSavePickledDistMatrixS) then ("--save_pickled_dist_matrix_s " +  '"' + saveSavePickledDistMatrixS + '"') else ""} \
      ~{true="--no_fclustering" false="" noNoFClustering} \
      ~{true="--no_plot_fclustering" false="" noNoPlotFClustering} \
      ~{true="--no_sclustering" false="" noNoSClustering} \
      ~{true="--no_plot_sclustering" false="" noNoPlotSClustering} \
      ~{if defined(fFLinkage) then ("--flinkage " +  '"' + fFLinkage + '"') else ""} \
      ~{if defined(sSLinkage) then ("--slinkage " +  '"' + sSLinkage + '"') else ""} \
      ~{if defined(bottomBottomC) then ("--bottom_c " +  '"' + bottomBottomC + '"') else ""} \
      ~{if defined(topTopC) then ("--top_c " +  '"' + topTopC + '"') else ""} \
      ~{if defined(nanNanC) then ("--nan_c " +  '"' + nanNanC + '"') else ""}
  >>>
}