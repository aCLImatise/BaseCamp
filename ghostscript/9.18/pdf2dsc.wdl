version 1.0

task Pdf2dsc {
  input {
    Boolean dictDict
    String? pdfPdfFile
  }
  command <<<
    pdf2dsc \
      ~{pdfPdfFile} \
      ~{true="--dict" false="" dictDict}
  >>>
}