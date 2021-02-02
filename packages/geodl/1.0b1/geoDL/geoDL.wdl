version 1.0

task GeoDL {
  input {
    Boolean? use_metadata_file
    Boolean? s
    Boolean? d
    String gse
    String website
    String cmds
  }
  command <<<
    geoDL \
      ~{gse} \
      ~{website} \
      ~{cmds} \
      ~{if (use_metadata_file) then "--meta" else ""} \
      ~{if (s) then "-s" else ""} \
      ~{if (d) then "-d" else ""}
  >>>
  parameter_meta {
    use_metadata_file: "Use metadata file instead of fetching it on EBI"
    s: ""
    d: ""
    gse: "GSE accession number, eg: GSE67196"
    website: "-d, --dry             Don't actually download anything, just print the wget"
    cmds: "-s [SAMPLES [SAMPLES ...]], --samples [SAMPLES [SAMPLES ...]]"
  }
  output {
    File out_stdout = stdout()
  }
}