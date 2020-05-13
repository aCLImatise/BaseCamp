version 1.0

task FilterComponents.pyMinlength {
  input {
    String? inInFile
    String? outfileOutfile
    Int? minlengthMinlength
  }
  command <<<
    filter_components.py minlength \
      ~{inInFile} \
      ~{outfileOutfile} \
      ~{minlengthMinlength}
  >>>
}