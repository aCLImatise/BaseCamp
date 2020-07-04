version 1.0

task Ccconfig {
  input {
    Boolean? inc_path
    Boolean? preprocess
    Boolean? compile_obj
    Boolean? compile_exe
    Boolean? c_ext
    Boolean? pp_ext
    Boolean? obj_ext
    Boolean? exe_ext
    Boolean? no_delete
    Boolean? no_run
    Boolean? quiet
    Boolean? no_status
    Boolean? debug
  }
  command <<<
    ccconfig \
      ~{true="--inc-path" false="" inc_path} \
      ~{true="--preprocess" false="" preprocess} \
      ~{true="--compile-obj" false="" compile_obj} \
      ~{true="--compile-exe" false="" compile_exe} \
      ~{true="--c-ext" false="" c_ext} \
      ~{true="--pp-ext" false="" pp_ext} \
      ~{true="--obj-ext" false="" obj_ext} \
      ~{true="--exe-ext" false="" exe_ext} \
      ~{true="--nodelete" false="" no_delete} \
      ~{true="--norun" false="" no_run} \
      ~{true="--quiet" false="" quiet} \
      ~{true="--nostatus" false="" no_status} \
      ~{true="--debug" false="" debug}
  >>>
  parameter_meta {
    inc_path: "path       manually set compiler include path"
    preprocess: "rule       compiler rule for preprocessing"
    compile_obj: "rule       compiler rule for compiling objects"
    compile_exe: "rule       compiler rule for compiling executables"
    c_ext: "ext        extension of C source files"
    pp_ext: "ext        extension of preprocessor output files"
    obj_ext: "ext        extension of object files"
    exe_ext: "ext        extension of executable files"
    no_delete: "don't delete temporary files"
    no_run: "don't try to run executables"
    quiet: "don't display anything"
    no_status: "don't display status indicator"
    debug: "debug mode"
  }
}