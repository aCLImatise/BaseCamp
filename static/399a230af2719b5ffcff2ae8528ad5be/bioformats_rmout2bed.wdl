version 1.0

task BioformatsRmout2bed {
  input {
    String? color
    String? name
    Boolean? short
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
      ~{true="--short" false="" short} \
      ~{true="-v" false="" v}
  >>>
  parameter_meta {
    color: "how to choose colors of BED repeat records (default: class)"
    name: "how to choose names of BED repeat records (default: id)"
    short: "output only repeat loci (the output is a BED3 file) (default: False)"
    v: ""
    rm_out_file: "a RepeatMasker out file"
    bed_file: "the output BED file"
  }
}