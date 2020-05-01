version 1.0

task Splitchr.py {
  input {
    String bedBed
    Boolean reformatReformat
  }
  command <<<
    splitchr.py \
      ~{if defined(bedBed) then ("--bed " +  '"' + bedBed + '"') else ""} \
      ~{true="--reformat" false="" reformatReformat}
  >>>
}