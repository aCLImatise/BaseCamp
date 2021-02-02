version 1.0

task LynerFilter {
  input {
    Int? sum
    Int? zeros
    Boolean? drop_na
    Boolean? drop_duplicates
    String? prefix
    String? suffix
    Float? variance_relative
  }
  command <<<
    lyner filter \
      ~{if defined(sum) then ("--sum " +  '"' + sum + '"') else ""} \
      ~{if defined(zeros) then ("--zeros " +  '"' + zeros + '"') else ""} \
      ~{if (drop_na) then "--drop-na" else ""} \
      ~{if (drop_duplicates) then "--drop-duplicates" else ""} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{if defined(suffix) then ("--suffix " +  '"' + suffix + '"') else ""} \
      ~{if defined(variance_relative) then ("--variance-relative " +  '"' + variance_relative + '"') else ""}
  >>>
  parameter_meta {
    sum: "Drops rows with sum smaller than or equal to\\ngiven value."
    zeros: "Drop rows with up to the given amount of"
    drop_na: "Drop rows with NA/nan/empty entries."
    drop_duplicates: "Drop duplicate rows."
    prefix: ""
    suffix: ""
    variance_relative: "Keep the top n% most variant rows, drop the"
  }
  output {
    File out_stdout = stdout()
  }
}