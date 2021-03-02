version 1.0

task FasconvertAnd {
  input {
    String? fi
    String? fo
    String? i
    String? o
    String fas_convert
    File fast_a_file
    File other_format_file
    String other_format
  }
  command <<<
    fasconvert and \
      ~{fas_convert} \
      ~{fast_a_file} \
      ~{other_format_file} \
      ~{other_format} \
      ~{if defined(fi) then ("-fi " +  '"' + fi + '"') else ""} \
      ~{if defined(fo) then ("-fo " +  '"' + fo + '"') else ""} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/perl-fast:1.06--pl526_0"
  }
  parameter_meta {
    fi: ""
    fo: ""
    i: ""
    o: ""
    fas_convert: ""
    fast_a_file: ""
    other_format_file: ""
    other_format: ""
  }
  output {
    File out_stdout = stdout()
  }
}