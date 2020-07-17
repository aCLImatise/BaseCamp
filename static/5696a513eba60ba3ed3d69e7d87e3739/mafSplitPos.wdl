version 1.0

task MafSplitPos {
  input {
    String? chrom
    String? min_gap
    String? min_repeat
    String database
    Int size
  }
  command <<<
    mafSplitPos \
      ~{database} \
      ~{size} \
      ~{if defined(chrom) then ("-chrom " +  '"' + chrom + '"') else ""} \
      ~{if defined(min_gap) then ("-minGap " +  '"' + min_gap + '"') else ""} \
      ~{if defined(min_repeat) then ("-minRepeat " +  '"' + min_repeat + '"') else ""}
  >>>
  parameter_meta {
    chrom: "Restrict to one chromosome"
    min_gap: "Split only on gaps >N bp, defaults to 100, specify -1 to disable"
    min_repeat: "Split only on repeats >N bp, defaults to 100, specify -1 to disable"
    database: ""
    size: ""
  }
}