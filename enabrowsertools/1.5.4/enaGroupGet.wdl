version 1.0

task EnaGroupGet {
  input {
    String? group
    String? format
    Directory? dest
    Boolean? wgs
    Boolean? extract_wgs
    Boolean? expanded
    Boolean? download_read_analysis
    Boolean? index
    Boolean? aspera
    File? aspera_settings
    Boolean? subtree
    String for
  }
  command <<<
    enaGroupGet \
      ~{for} \
      ~{if defined(group) then ("--group " +  '"' + group + '"') else ""} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{if defined(dest) then ("--dest " +  '"' + dest + '"') else ""} \
      ~{if (wgs) then "--wgs" else ""} \
      ~{if (extract_wgs) then "--extract-wgs" else ""} \
      ~{if (expanded) then "--expanded" else ""} \
      ~{if (download_read_analysis) then "--meta" else ""} \
      ~{if (index) then "--index" else ""} \
      ~{if (aspera) then "--aspera" else ""} \
      ~{if defined(aspera_settings) then ("--aspera-settings " +  '"' + aspera_settings + '"') else ""} \
      ~{if (subtree) then "--subtree" else ""}
  >>>
  parameter_meta {
    group: "Data group to be downloaded for this\\nstudy/sample/taxon (default is read)"
    format: "File format required. Format requested must be\\npermitted for data group selected. sequence, assembly\\nand wgs groups: embl and fasta formats. read group:\\nsubmitted, fastq and sra formats. analysis group:\\nsubmitted only."
    dest: "Destination directory (default is current running\\ndirectory)"
    wgs: "Download WGS set for each assembly if available\\n(default is false)"
    extract_wgs: "Extract WGS scaffolds for each assembly if available\\n(default is false)"
    expanded: "Expand CON scaffolds when downloading embl format\\n(default is false)"
    download_read_analysis: "Download read or analysis XML in addition to data\\nfiles (default is false)"
    index: "Download CRAM index files with submitted CRAM files,\\nif any (default is false). This flag is ignored for\\nfastq and sra format options."
    aspera: "Use the aspera command line client to download,\\ninstead of FTP."
    aspera_settings: "Use the provided settings file, will otherwise check\\nfor environment variable or default settings file\\nlocation."
    subtree: "Include subordinate taxa (taxon subtree) when querying\\nwith NCBI tax ID (default is false)"
    for: "optional arguments:"
  }
  output {
    File out_stdout = stdout()
  }
}