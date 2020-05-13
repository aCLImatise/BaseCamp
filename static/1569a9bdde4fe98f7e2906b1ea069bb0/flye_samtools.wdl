version 1.0

task FlyeSamtools {
  input {
    Boolean indexingIndexing
    Boolean editingEditing
    String fileFile
    Boolean statisticsStatistics
    Boolean viewingViewing
    String? samSamTools
    String? commandCommand
  }
  command <<<
    flye-samtools \
      ~{samSamTools} \
      ~{true="-- Indexing" false="" indexingIndexing} \
      ~{true="-- Editing" false="" editingEditing} \
      ~{if defined(fileFile) then ("-- File " +  '"' + fileFile + '"') else ""} \
      ~{true="-- Statistics" false="" statisticsStatistics} \
      ~{true="-- Viewing" false="" viewingViewing} \
      ~{commandCommand}
  >>>
}