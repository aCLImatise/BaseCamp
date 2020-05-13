version 1.0

task DvMakeExamples.py {
  input {
    String examplesExamples
  }
  command <<<
    dv_make_examples.py \
      ~{if defined(examplesExamples) then ("--examples " +  '"' + examplesExamples + '"') else ""}
  >>>
}