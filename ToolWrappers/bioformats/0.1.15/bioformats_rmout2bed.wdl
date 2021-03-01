version 1.0

task BioformatsRmout2bed {
  input {
    String? color
    String? name
    File? short
    Boolean? v
    String rm_out_file
    String bed_file
  }
  command <<<
    bioformats rmout2bed \
      ~{rm_out_file} \
      ~{bed_file} \
      ~{if defined(color) then ("--color " +  '"' + color + '"') else ""} \
      ~{if defined(name) then ("--name " +  '"' + name + '"') else ""} \
      ~{if (short) then "--short" else ""} \
      ~{if (v) then "-v" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    color: "how to choose colors of BED repeat records (default:\\nclass)"
    name: "how to choose names of BED repeat records (default:\\nid)"
    short: "output only repeat loci (the output is a BED3 file)\\n(default: False)\\n"
    v: ""
    rm_out_file: "a RepeatMasker out file"
    bed_file: "the output BED file"
  }
  output {
    File out_stdout = stdout()
    File out_short = "${in_short}"
  }
}