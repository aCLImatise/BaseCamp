version 1.0

task Fwdpy11 {
  input {
    Boolean? includes
    Boolean? fwd_pp_headers
    Boolean? mako
    Boolean? fwd_py_one_one_headers
    Int? m
    String headers_dot
  }
  command <<<
    fwdpy11 \
      ~{headers_dot} \
      ~{if (includes) then "--includes" else ""} \
      ~{if (fwd_pp_headers) then "--fwdpp_headers" else ""} \
      ~{if (mako) then "--mako" else ""} \
      ~{if (fwd_py_one_one_headers) then "--fwdpy11_headers" else ""} \
      ~{if defined(m) then ("-m " +  '"' + m + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/fwdpy11:0.13.2--py36hd672420_0"
  }
  parameter_meta {
    includes: "Print the CPPFLAGS required to use fwdpy11 and fwdpp"
    fwd_pp_headers: "Get location of fwdpp headers"
    mako: "Print minimal mako header for use with cppimport."
    fwd_py_one_one_headers: ""
    m: ""
    headers_dot: "--fwdpy11_headers  Get location of fwdpy11 headers"
  }
  output {
    File out_stdout = stdout()
  }
}