version 1.0

task EnaDataGet {
  input {
    String? format
    String? dest
    Boolean? wgs
    Boolean? extract_wgs
    Boolean? expanded
    Boolean? download_read_analysis
    Boolean? index
    Boolean? aspera
    String? aspera_settings
    String accession
  }
  command <<<
    enaDataGet \
      ~{accession} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{if defined(dest) then ("--dest " +  '"' + dest + '"') else ""} \
      ~{true="--wgs" false="" wgs} \
      ~{true="--extract-wgs" false="" extract_wgs} \
      ~{true="--expanded" false="" expanded} \
      ~{true="--meta" false="" download_read_analysis} \
      ~{true="--index" false="" index} \
      ~{true="--aspera" false="" aspera} \
      ~{if defined(aspera_settings) then ("--aspera-settings " +  '"' + aspera_settings + '"') else ""}
  >>>
  parameter_meta {
    format: "File format required. Format requested must be permitted for data type selected. sequence, assembly and wgs accessions: embl(default) and fasta formats. read group: submitted, fastq and sra formats. analysis group: submitted only."
    dest: "Destination directory (default is current running directory)"
    wgs: "Download WGS set for each assembly if available (default is false)"
    extract_wgs: "Extract WGS scaffolds for each assembly if available (default is false)"
    expanded: "Expand CON scaffolds when downloading embl format (default is false)"
    download_read_analysis: "Download read or analysis XML in addition to data files (default is false)"
    index: "Download CRAM index files with submitted CRAM files, if any (default is false). This flag is ignored for fastq and sra format options."
    aspera: "Use the aspera command line client to download, instead of FTP."
    aspera_settings: "Use the provided settings file, will otherwise check for environment variable or default settings file location."
    accession: "Sequence, coding, assembly, run, experiment or analysis accession or WGS prefix (LLLLVV) to download"
  }
}