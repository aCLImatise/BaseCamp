version 1.0

task RsatConvertbackgroundmodel {
  input {
    String convert_background_model
    String util
    String mmeme_inputoutputm
    String models_dot
    String mpatser_outputm
    String formats_dot
    String words_dot
  }
  command <<<
    rsat convert_background_model \
      ~{convert_background_model} \
      ~{util} \
      ~{mmeme_inputoutputm} \
      ~{models_dot} \
      ~{mpatser_outputm} \
      ~{formats_dot} \
      ~{words_dot}
  >>>
  parameter_meta {
    convert_background_model: "[1mDESCRIPTION[0m"
    util: "[1mUSAGE[0m"
    mmeme_inputoutputm: "[1mMEME (input/output)[0m"
    models_dot: "MEME background files can be generated with the program"
    mpatser_outputm: "[1mpatser (output)[0m"
    formats_dot: "Alternatively, the background model can be specified by combining"
    words_dot: "See [33moligo-analysis[0m for more details on this option"
  }
  output {
    File out_stdout = stdout()
  }
}