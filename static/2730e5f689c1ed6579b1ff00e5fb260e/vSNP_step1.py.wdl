version 1.0

task VSNPStep1py {
  input {
    Int? read_one
    Int? read_two
    File? reference
    File? gbk
    Boolean? table
    String? group
    Boolean? skip_assembly
    String prog
  }
  command <<<
    vSNP_step1_py \
      ~{prog} \
      ~{if defined(read_one) then ("--read1 " +  '"' + read_one + '"') else ""} \
      ~{if defined(read_two) then ("--read2 " +  '"' + read_two + '"') else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(gbk) then ("--gbk " +  '"' + gbk + '"') else ""} \
      ~{if (table) then "--table" else ""} \
      ~{if defined(group) then ("--group " +  '"' + group + '"') else ""} \
      ~{if (skip_assembly) then "--skip_assembly" else ""}
  >>>
  parameter_meta {
    read_one: "Required: single read, R1 when Illumina read"
    read_two: "Optional: R2 Illumina read"
    reference: "Optional: Provide reference option or FASTA file. If\\nneither are given, no -r option, then a\\nTB/Brucella/paraTB best reference are searched"
    gbk: "Optional: gbk to annotate VCF file"
    table: "See reference options"
    group: "Optional: group output via best_reference.py, ie\\nspecify TB or Bruc which initials spoligo or MLST\\ngeneration"
    skip_assembly: "Optional: skip assembly of unmapped reads"
    prog: ""
  }
  output {
    File out_stdout = stdout()
  }
}