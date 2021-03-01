version 1.0

task Findpositionsusedpl {
  input {
    Boolean? core_pos
    Boolean? bad_pos
    Boolean? tab
    Boolean? reference
    String chromosome
  }
  command <<<
    find_positions_used_pl \
      ~{chromosome} \
      ~{if (core_pos) then "--core-pos" else ""} \
      ~{if (bad_pos) then "--bad-pos" else ""} \
      ~{if (tab) then "--tab" else ""} \
      ~{if (reference) then "--reference" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    core_pos: ":  Core positions file from vcf2core.pl (GFF format)."
    bad_pos: ": Bad positions file, format of"
    tab: ": Print in tab-deliminted format"
    reference: ":  Reference fasta file."
    chromosome: "start   end"
  }
  output {
    File out_stdout = stdout()
  }
}