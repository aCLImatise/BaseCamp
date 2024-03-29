version 1.0

task EnaDataGet {
  input {
    String? format
    Directory? dest
    Boolean? wgs
    Boolean? extract_wgs
    Boolean? expanded
    Boolean? download_read_xml
    Boolean? index
    Boolean? aspera
    File? aspera_settings
  }
  command <<<
    enaDataGet \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{if defined(dest) then ("--dest " +  '"' + dest + '"') else ""} \
      ~{if (wgs) then "--wgs" else ""} \
      ~{if (extract_wgs) then "--extract-wgs" else ""} \
      ~{if (expanded) then "--expanded" else ""} \
      ~{if (download_read_xml) then "--meta" else ""} \
      ~{if (index) then "--index" else ""} \
      ~{if (aspera) then "--aspera" else ""} \
      ~{if defined(aspera_settings) then ("--aspera-settings " +  '"' + aspera_settings + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    format: "File format required. Format requested must be\\npermitted for data type selected. sequence, assembly\\nand wgs accessions: embl(default) and fasta formats.\\nread group: submitted, fastq and sra formats. analysis\\ngroup: submitted only."
    dest: "Destination directory (default is current running\\ndirectory)"
    wgs: "Download WGS set for each assembly if available\\n(default is false)"
    extract_wgs: "Extract WGS scaffolds for each assembly if available\\n(default is false)"
    expanded: "Expand CON scaffolds when downloading embl format\\n(default is false)"
    download_read_xml: "Download read or analysis XML in addition to data\\nfiles (default is false)"
    index: "Download CRAM index files with submitted CRAM files,\\nif any (default is false). This flag is ignored for\\nfastq and sra format options."
    aspera: "Use the aspera command line client to download,\\ninstead of FTP."
    aspera_settings: "Use the provided settings file, will otherwise check\\nfor environment variable or default settings file\\nlocation."
  }
  output {
    File out_stdout = stdout()
  }
}