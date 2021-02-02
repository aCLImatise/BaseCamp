version 1.0

task HpDemo {
  input {
    String? githubcomgwcbihaphpipeblobmasterbinrefstargzrawtrue__haphpipedemorefstargz
    String? xzvf
    Boolean? haphpipedemo
  }
  command <<<
    hp_demo \
      ~{if defined(githubcomgwcbihaphpipeblobmasterbinrefstargzrawtrue__haphpipedemorefstargz) then ("-L " +  '"' + githubcomgwcbihaphpipeblobmasterbinrefstargzrawtrue__haphpipedemorefstargz + '"') else ""} \
      ~{if defined(xzvf) then ("-xzvf " +  '"' + xzvf + '"') else ""} \
      ~{if (haphpipedemo) then "-C" else ""}
  >>>
  parameter_meta {
    githubcomgwcbihaphpipeblobmasterbinrefstargzrawtrue__haphpipedemorefstargz: "://github.com/gwcbi/haphpipe/blob/master/bin/refs.tar.gz?raw=true \\\\n> ./haphpipe_demo/refs.tar.gz"
    xzvf: "\\"
    haphpipedemo: "./haphpipe_demo"
  }
  output {
    File out_stdout = stdout()
  }
}