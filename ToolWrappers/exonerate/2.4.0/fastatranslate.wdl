version 1.0

task Fastatranslate {
  input {
    Boolean? help
    File? fast_a
    Boolean? frame
    Boolean? genetic_code
  }
  command <<<
    fastatranslate \
      ~{if (help) then "--help" else ""} \
      ~{if defined(fast_a) then ("--fasta " +  '"' + fast_a + '"') else ""} \
      ~{if (frame) then "--frame" else ""} \
      ~{if (genetic_code) then "--geneticcode" else ""}
  >>>
  parameter_meta {
    help: ""
    fast_a: ""
    frame: ""
    genetic_code: ""
  }
  output {
    File out_stdout = stdout()
  }
}