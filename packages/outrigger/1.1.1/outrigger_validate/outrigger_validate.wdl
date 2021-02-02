version 1.0

task OutriggerValidate {
  input {
    File? fast_a
    File? genome
    Directory? index
    Directory? name_folder_is
    Int? valid_splice_sites
    Boolean? debug
    Boolean? low_memory
  }
  command <<<
    outrigger validate \
      ~{if defined(fast_a) then ("--fasta " +  '"' + fast_a + '"') else ""} \
      ~{if defined(genome) then ("--genome " +  '"' + genome + '"') else ""} \
      ~{if defined(index) then ("--index " +  '"' + index + '"') else ""} \
      ~{if defined(name_folder_is) then ("--output " +  '"' + name_folder_is + '"') else ""} \
      ~{if defined(valid_splice_sites) then ("--valid-splice-sites " +  '"' + valid_splice_sites + '"') else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if (low_memory) then "--low-memory" else ""}
  >>>
  parameter_meta {
    fast_a: "Location of the genome fasta file for which to get the\\nsplice site sequences from"
    genome: "Either the genome name (e.g. \\\"mm10\\\" or \\\"hg19\\\") or\\nlocation of the genome chromosome sizes file for\\n\\\"bedtools flank\\\" to make sure we do not accidentally\\nask for genome positions that are outside of the\\ndefined range"
    index: "Name of the folder where you saved the output from\\n\\\"outrigger index\\\" (default is\\n./outrigger_output/index, which is relative to the\\ndirectory where you called this program, assuming you\\nhave called \\\"outrigger psi\\\" in the same folder as you\\ncalled \\\"outrigger index\\\")."
    name_folder_is: "Name of the folder where you saved the output from\\n\\\"outrigger index\\\" (default is ./outrigger_output,\\nwhich is relative to the directory where you called\\nthe program)."
    valid_splice_sites: "The intron-definition based splice sites that are\\nallowed in the data, which is in the format 5'/3' of\\nthe intron, and separated by commas for different\\ntypes. Default is GT/AG,GC/AG,AT/AC, which are the\\nmajor and minor spliceosome splice sites in mammalian\\nsystems."
    debug: "If given, print debugging logging information to\\nstandard out"
    low_memory: "If set, then use a smaller memory footprint. By\\ndefault, this is off.\\n"
  }
  output {
    File out_stdout = stdout()
    Directory out_index = "${in_index}"
    Directory out_name_folder_is = "${in_name_folder_is}"
  }
}