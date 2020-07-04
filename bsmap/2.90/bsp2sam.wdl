version 1.0

task Bsp2sam.py {
  input {
    File? out
    File? ref
    Boolean? quiet
    String bs_map_mapping_file
  }
  command <<<
    bsp2sam.py \
      ~{bs_map_mapping_file} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if defined(ref) then ("--ref " +  '"' + ref + '"') else ""} \
      ~{true="--quiet" false="" quiet}
  >>>
  parameter_meta {
    out: "output file name. (required)"
    ref: "reference genome fasta file. (required)"
    quiet: "don't print progress on stderr."
    bs_map_mapping_file: ""
  }
}