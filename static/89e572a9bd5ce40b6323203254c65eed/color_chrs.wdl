version 1.0

task ColorChrs.pl {
  input {
    File? colors
    String? prefix
    String output_dot_dat
  }
  command <<<
    color-chrs.pl \
      ~{output_dot_dat} \
      ~{if defined(colors) then ("--colors " +  '"' + colors + '"') else ""} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""}
  >>>
  parameter_meta {
    colors: "File with list of \"chr hap color\"."
    prefix: "Prefix of output files."
    output_dot_dat: ""
  }
}