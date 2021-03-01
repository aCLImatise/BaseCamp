version 1.0

task Colorchrspl {
  input {
    File? colors
    String? prefix
    String output_dot_dat
  }
  command <<<
    color_chrs_pl \
      ~{output_dot_dat} \
      ~{if defined(colors) then ("--colors " +  '"' + colors + '"') else ""} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    colors: "File with list of \\\"chr hap color\\\"."
    prefix: "Prefix of output files."
    output_dot_dat: ""
  }
  output {
    File out_stdout = stdout()
  }
}