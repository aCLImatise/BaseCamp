version 1.0

task SetupGenomicData.py {
  input {
    Boolean allAll
    Boolean hg19Hg19
    Boolean hg38Hg38
    Boolean mm9Mm9
    Boolean mm10Mm10
    Boolean zv9Zv9
    Boolean zv10Zv10
    String hg19Hg19GenomePath
    String hg38Hg38GenomePath
    String mm9Mm9GenomePath
    String mm10Mm10GenomePath
    String zv9Zv9GenomePath
    String zv10Zv10GenomePath
    String hg19Hg19GtfPath
    String hg38Hg38GtfPath
    String mm9Mm9GtfPath
    String mm10Mm10GtfPath
    String zv9Zv9GtfPath
    String zv10Zv10GtfPath
    Boolean hg38Hg38Rm
    Boolean hg19Hg19Rm
    Boolean mm9Mm9Rm
    String? pythonPython
    String? setupSetupGenomicDataPy
  }
  command <<<
    setupGenomicData.py \
      ~{pythonPython} \
      ~{true="--all" false="" allAll} \
      ~{true="--hg19" false="" hg19Hg19} \
      ~{true="--hg38" false="" hg38Hg38} \
      ~{true="--mm9" false="" mm9Mm9} \
      ~{true="--mm10" false="" mm10Mm10} \
      ~{true="--zv9" false="" zv9Zv9} \
      ~{true="--zv10" false="" zv10Zv10} \
      ~{if defined(hg19Hg19GenomePath) then ("--hg19-genome-path " +  '"' + hg19Hg19GenomePath + '"') else ""} \
      ~{if defined(hg38Hg38GenomePath) then ("--hg38-genome-path " +  '"' + hg38Hg38GenomePath + '"') else ""} \
      ~{if defined(mm9Mm9GenomePath) then ("--mm9-genome-path " +  '"' + mm9Mm9GenomePath + '"') else ""} \
      ~{if defined(mm10Mm10GenomePath) then ("--mm10-genome-path " +  '"' + mm10Mm10GenomePath + '"') else ""} \
      ~{if defined(zv9Zv9GenomePath) then ("--zv9-genome-path " +  '"' + zv9Zv9GenomePath + '"') else ""} \
      ~{if defined(zv10Zv10GenomePath) then ("--zv10-genome-path " +  '"' + zv10Zv10GenomePath + '"') else ""} \
      ~{if defined(hg19Hg19GtfPath) then ("--hg19-gtf-path " +  '"' + hg19Hg19GtfPath + '"') else ""} \
      ~{if defined(hg38Hg38GtfPath) then ("--hg38-gtf-path " +  '"' + hg38Hg38GtfPath + '"') else ""} \
      ~{if defined(mm9Mm9GtfPath) then ("--mm9-gtf-path " +  '"' + mm9Mm9GtfPath + '"') else ""} \
      ~{if defined(mm10Mm10GtfPath) then ("--mm10-gtf-path " +  '"' + mm10Mm10GtfPath + '"') else ""} \
      ~{if defined(zv9Zv9GtfPath) then ("--zv9-gtf-path " +  '"' + zv9Zv9GtfPath + '"') else ""} \
      ~{if defined(zv10Zv10GtfPath) then ("--zv10-gtf-path " +  '"' + zv10Zv10GtfPath + '"') else ""} \
      ~{true="--hg38-rm" false="" hg38Hg38Rm} \
      ~{true="--hg19-rm" false="" hg19Hg19Rm} \
      ~{true="--mm9-rm" false="" mm9Mm9Rm} \
      ~{setupSetupGenomicDataPy}
  >>>
}