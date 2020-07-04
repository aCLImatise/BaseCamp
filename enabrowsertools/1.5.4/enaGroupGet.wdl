version 1.0

task EnaGroupGet {
  input {
    String? group
    String? format
    String? dest
    Boolean? wgs
    Boolean? extract_wgs
    Boolean? expanded
    Boolean? download_read_analysis
    Boolean? index
    Boolean? aspera
    String? aspera_settings
    Boolean? subtree
    String accession
  }
  command <<<
    enaGroupGet \
      ~{accession} \
      ~{if defined(group) then ("--group " +  '"' + group + '"') else ""} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{if defined(dest) then ("--dest " +  '"' + dest + '"') else ""} \
      ~{true="--wgs" false="" wgs} \
      ~{true="--extract-wgs" false="" extract_wgs} \
      ~{true="--expanded" false="" expanded} \
      ~{true="--meta" false="" download_read_analysis} \
      ~{true="--index" false="" index} \
      ~{true="--aspera" false="" aspera} \
      ~{if defined(aspera_settings) then ("--aspera-settings " +  '"' + aspera_settings + '"') else ""} \
      ~{true="--subtree" false="" subtree}
  >>>
  parameter_meta {
    group: "Data group to be downloaded for this study/sample/taxon (default is read)"
    format: "File format required. Format requested must be permitted for data group selected. sequence, assembly and wgs groups: embl and fasta formats. read group: submitted, fastq and sra formats. analysis group: submitted only."
    dest: "Destination directory (default is current running directory)"
    wgs: "Download WGS set for each assembly if available (default is false)"
    extract_wgs: "Extract WGS scaffolds for each assembly if available (default is false)"
    expanded: "Expand CON scaffolds when downloading embl format (default is false)"
    download_read_analysis: "Download read or analysis XML in addition to data files (default is false)"
    index: "Download CRAM index files with submitted CRAM files, if any (default is false). This flag is ignored for fastq and sra format options."
    aspera: "Use the aspera command line client to download, instead of FTP."
    aspera_settings: "Use the provided settings file, will otherwise check for environment variable or default settings file location."
    subtree: "Include subordinate taxa (taxon subtree) when querying with NCBI tax ID (default is false)"
    accession: "Study or sample accession or NCBI tax ID to fetch data for"
  }
}