version 1.0

task ArticFilter {
  input {
    Boolean? quiet
    Int? max_length
    Int? min_length
    File filename
  }
  command <<<
    artic filter \
      ~{filename} \
      ~{true="--quiet" false="" quiet} \
      ~{if defined(max_length) then ("--max-length " +  '"' + max_length + '"') else ""} \
      ~{if defined(min_length) then ("--min-length " +  '"' + min_length + '"') else ""}
  >>>
  parameter_meta {
    quiet: "Do not output warnings to stderr"
    max_length: "remove reads greater than read length"
    min_length: "remove reads less than read length"
    filename: "FASTQ file."
  }
}