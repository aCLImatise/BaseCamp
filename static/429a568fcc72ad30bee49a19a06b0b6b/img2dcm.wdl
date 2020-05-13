version 1.0

task Img2dcm {
  input {
    Boolean qQ
    Boolean vV
    Boolean dD
    Boolean llLl
    Boolean lcLc
    Boolean iI
    Boolean dfDf
    Boolean studyStudyFrom
    Boolean seriesSeriesFrom
    Boolean iiIi
    Boolean dpDp
    Boolean deDe
    Boolean jfJf
    Boolean kaKa
    Boolean doDoChecks
    Boolean noNoChecks
    Boolean i1I1
    Boolean l1L1
    Boolean kK
    Boolean scSc
    Boolean newNewSc
    Boolean vlVlPhoto
    Boolean fF
    Boolean gG
    Boolean eE
    String? imgImgFileIn
    String? dcmDcmFileOut
  }
  command <<<
    img2dcm \
      ~{imgImgFileIn} \
      ~{true="-q" false="" qQ} \
      ~{true="-v" false="" vV} \
      ~{true="-d" false="" dD} \
      ~{true="-ll" false="" llLl} \
      ~{true="-lc" false="" lcLc} \
      ~{true="-i" false="" iI} \
      ~{true="-df" false="" dfDf} \
      ~{true="--study-from" false="" studyStudyFrom} \
      ~{true="--series-from" false="" seriesSeriesFrom} \
      ~{true="-ii" false="" iiIi} \
      ~{true="-dp" false="" dpDp} \
      ~{true="-de" false="" deDe} \
      ~{true="-jf" false="" jfJf} \
      ~{true="-ka" false="" kaKa} \
      ~{true="--do-checks" false="" doDoChecks} \
      ~{true="--no-checks" false="" noNoChecks} \
      ~{true="-i1" false="" i1I1} \
      ~{true="-l1" false="" l1L1} \
      ~{true="-k" false="" kK} \
      ~{true="-sc" false="" scSc} \
      ~{true="--new-sc" false="" newNewSc} \
      ~{true="--vl-photo" false="" vlVlPhoto} \
      ~{true="-F" false="" fF} \
      ~{true="-g" false="" gG} \
      ~{true="-e" false="" eE} \
      ~{dcmDcmFileOut}
  >>>
}