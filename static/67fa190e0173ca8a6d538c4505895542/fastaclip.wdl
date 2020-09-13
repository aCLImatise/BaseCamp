version 1.0

task Fastaclip {
  input {
    Boolean? help
    File? fast_a
    File? clip
  }
  command <<<
    fastaclip \
      ~{if (help) then "--help" else ""} \
      ~{if defined(fast_a) then ("--fasta " +  '"' + fast_a + '"') else ""} \
      ~{if defined(clip) then ("--clip " +  '"' + clip + '"') else ""}
  >>>
  parameter_meta {
    help: ""
    fast_a: ""
    clip: ""
  }
  output {
    File out_stdout = stdout()
  }
}