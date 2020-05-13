version 1.0

task MedpyGraphcutLabelBgreduced.py {
  input {
    Boolean fF
    Boolean vV
    Boolean dD
    String? gradientGradient
    String? regionRegion
    String? markersMarkers
    String? outputOutput
  }
  command <<<
    medpy_graphcut_label_bgreduced.py \
      ~{gradientGradient} \
      ~{true="-f" false="" fF} \
      ~{true="-v" false="" vV} \
      ~{true="-d" false="" dD} \
      ~{regionRegion} \
      ~{markersMarkers} \
      ~{outputOutput}
  >>>
}