version 1.0

task Splitchr.pyFastaSize {
  input {
    String bedBed
    Boolean reformatReformat
  }
  command <<<
    splitchr.py fasta size \
      ~{if defined(bedBed) then ("--bed " +  '"' + bedBed + '"') else ""} \
      ~{true="--reformat" false="" reformatReformat}
  >>>
}