version 1.0

task HgLoadWiggle {
  input {
    File? tmpdir
    String? verbose
    String database
    String track
    File files
  }
  command <<<
    hgLoadWiggle \
      ~{database} \
      ~{track} \
      ~{files} \
      ~{if defined(tmpdir) then ("-tmpDir " +  '"' + tmpdir + '"') else ""} \
      ~{if defined(verbose) then ("-verbose " +  '"' + verbose + '"') else ""}
  >>>
  parameter_meta {
    tmpdir: "- path to directory for creation of temporary .tab file - which will be removed after loading"
    verbose: "N=2 see # of lines input and SQL create statement, N=3 see chrom size info, N=4 see details on chrom size info"
    database: ""
    track: ""
    files: ""
  }
}