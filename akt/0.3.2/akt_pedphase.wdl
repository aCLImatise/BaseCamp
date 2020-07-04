version 1.0

task AktPedphase {
  input {
    Boolean? pedigree
    File? output_file
    String? output_type
    Boolean? threads
    Boolean? exclude_chromosome
  }
  command <<<
    akt pedphase \
      ~{true="--pedigree" false="" pedigree} \
      ~{if defined(output_file) then ("--output-file " +  '"' + output_file + '"') else ""} \
      ~{if defined(output_type) then ("--output-type " +  '"' + output_type + '"') else ""} \
      ~{true="--threads" false="" threads} \
      ~{true="--exclude-chromosome" false="" exclude_chromosome}
  >>>
  parameter_meta {
    pedigree: "pedigree information in plink .fam format"
    output_file: "output file name [stdout]"
    output_type: "b: compressed BCF, u: uncompressed BCF, z: compressed VCF, v: uncompressed VCF [v]"
    threads: "number of compression/decompression threads to use"
    exclude_chromosome: "leave these chromosomes unphased (unphased lines will still be in in output)  eg. -x chrM,chrY"
  }
}