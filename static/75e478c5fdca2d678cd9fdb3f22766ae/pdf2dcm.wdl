version 1.0

task Pdf2dcm {
  input {
    Boolean qQ
    Boolean vV
    Boolean dD
    Boolean llLl
    Boolean lcLc
    Boolean annotationAnnotationNo
    String? pdfPdfFileIn
    String? dcmDcmFileOut
  }
  command <<<
    pdf2dcm \
      ~{pdfPdfFileIn} \
      ~{true="-q" false="" qQ} \
      ~{true="-v" false="" vV} \
      ~{true="-d" false="" dD} \
      ~{true="-ll" false="" llLl} \
      ~{true="-lc" false="" lcLc} \
      ~{true="--annotation-no" false="" annotationAnnotationNo} \
      ~{dcmDcmFileOut}
  >>>
}