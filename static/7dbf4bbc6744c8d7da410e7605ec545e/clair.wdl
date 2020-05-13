version 1.0

task Clair.py {
  input {
    String? pythonPython
    String? clairClairPy
    String? submoduleSubmodule
    String? ofOf
    String? theThe
    String? submoduleSubmodule
  }
  command <<<
    clair.py \
      ~{pythonPython} \
      ~{clairClairPy} \
      ~{submoduleSubmodule} \
      ~{ofOf} \
      ~{theThe} \
      ~{submoduleSubmodule}
  >>>
}