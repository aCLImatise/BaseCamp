version 1.0

task BamSomaticsniper {
  input {
    File fF
  }
  command <<<
    bam-somaticsniper \
      ~{if defined(fF) then ("-f " +  '"' + fF + '"') else ""}
  >>>
}