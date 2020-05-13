version 1.0

task SamToCollapsedGff.py {
  input {
    String? convertConvert
    String? samSam
    String? toTo
    String? collapsedCollapsed
    String? gffGff
    String? formatFormat
    String? samSamFilename
  }
  command <<<
    sam_to_collapsed_gff.py \
      ~{convertConvert} \
      ~{samSam} \
      ~{toTo} \
      ~{collapsedCollapsed} \
      ~{gffGff} \
      ~{formatFormat} \
      ~{samSamFilename}
  >>>
}