version 1.0

task UnifyHeaders.pyUnifyFail {
  input {
    String unify_headers_do_tpy
  }
  command <<<
    UnifyHeaders.py unify-fail \
      ~{unify_headers_do_tpy}
  >>>
  parameter_meta {
    unify_headers_do_tpy: ""
  }
}