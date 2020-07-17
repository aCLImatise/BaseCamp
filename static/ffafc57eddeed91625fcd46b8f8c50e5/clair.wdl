version 1.0

task Clair.py {
  input {
    String? var_0
    String? of
    String? the
    String? var_3
  }
  command <<<
    clair.py \
      ~{var_0} \
      ~{of} \
      ~{the} \
      ~{var_3}
  >>>
  parameter_meta {
    var_0: ""
    of: ""
    the: ""
    var_3: ""
  }
}