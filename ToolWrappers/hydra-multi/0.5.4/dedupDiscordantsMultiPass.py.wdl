version 1.0

task DedupDiscordantsMultiPasspy {
  input {
    File? bedpe_input_file
    Int? amount_slop_bp
    Int? maximum_number_mapping
    Int? mem
    Boolean? dedup__
  }
  command <<<
    dedupDiscordantsMultiPass_py \
      ~{if defined(bedpe_input_file) then ("-i " +  '"' + bedpe_input_file + '"') else ""} \
      ~{if defined(amount_slop_bp) then ("-s " +  '"' + amount_slop_bp + '"') else ""} \
      ~{if defined(maximum_number_mapping) then ("-m " +  '"' + maximum_number_mapping + '"') else ""} \
      ~{if defined(mem) then ("--mem " +  '"' + mem + '"') else ""} \
      ~{if (dedup__) then "-e" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/hydra-multi:0.5.4--py27h8b12597_0"
  }
  parameter_meta {
    bedpe_input_file: "BEDPE input file"
    amount_slop_bp: "The amount of slop, in bp, allowed for duplicates to be marked"
    maximum_number_mapping: "The maximum number of mapping combinations allowed before a\\nduplicate ID has _all_ of its mappings removed"
    mem: "The amount of memory to use for UNIX sort.  Default = 2G.  See\\n\\\"man sort\\\" for valid values."
    dedup__: "Dedup if __either__ end shares a start position (within slop)\\nin common.\\n"
  }
  output {
    File out_stdout = stdout()
  }
}