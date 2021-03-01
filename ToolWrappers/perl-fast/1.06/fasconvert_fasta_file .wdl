version 1.0

task FasconvertFastafile {
  input {
    String? fi
    String? fo
    String? i
    String? o
    String fas_convert
    String other_format
    File other_format_file
  }
  command <<<
    fasconvert fasta_file_ \
      ~{fas_convert} \
      ~{other_format} \
      ~{other_format_file} \
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
    other_format: ""
    other_format_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}