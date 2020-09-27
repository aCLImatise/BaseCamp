version 1.0

task MafFrag {
  input {
    String? out_name
    String database
    String maf_track
    String chrom
    String start
    String end
    String strand
  }
  command <<<
    mafFrag \
      ~{database} \
      ~{maf_track} \
      ~{chrom} \
      ~{start} \
      ~{end} \
      ~{strand} \
      ~{if defined(out_name) then ("-outName " +  '"' + out_name + '"') else ""}
  >>>
  parameter_meta {
    out_name: "Use XXX instead of database.chrom for the name"
    database: ""
    maf_track: ""
    chrom: ""
    start: ""
    end: ""
    strand: ""
  }
  output {
    File out_stdout = stdout()
  }
}