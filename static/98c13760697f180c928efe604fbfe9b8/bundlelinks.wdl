version 1.0

task Bundlelinks {
  input {
    Int? max_gap
    Int? chr_one
    Int? chr_two
    File? links
  }
  command <<<
    bundlelinks \
      ~{if defined(max_gap) then ("-max_gap " +  '"' + max_gap + '"') else ""} \
      ~{if defined(chr_one) then ("-chr1 " +  '"' + chr_one + '"') else ""} \
      ~{if defined(chr_two) then ("-chr2 " +  '"' + chr_two + '"') else ""} \
      ~{if defined(links) then ("-links " +  '"' + links + '"') else ""}
  >>>
  parameter_meta {
    max_gap: ""
    chr_one: ""
    chr_two: ""
    links: ""
  }
  output {
    File out_stdout = stdout()
  }
}