version 1.0

task PizzlyGetFragmentLength.py {
  input {
    String? pythonPython
    String? getGetFragmentLengthPy
    String? h5H5File
    String? cutCutOff
  }
  command <<<
    pizzly_get_fragment_length.py \
      ~{pythonPython} \
      ~{getGetFragmentLengthPy} \
      ~{h5H5File} \
      ~{cutCutOff}
  >>>
}