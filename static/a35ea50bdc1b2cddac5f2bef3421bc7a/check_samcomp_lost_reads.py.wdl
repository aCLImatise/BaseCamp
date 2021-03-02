version 1.0

task CheckSamcompLostReadspy {
  input {
    Int? summary_one
    Int? summary_two
    File? ase_names
    File? ase
    File? out
  }
  command <<<
    check_samcomp_lost_reads_py \
      ~{if defined(summary_one) then ("--summary1 " +  '"' + summary_one + '"') else ""} \
      ~{if defined(summary_two) then ("--summary2 " +  '"' + summary_two + '"') else ""} \
      ~{if defined(ase_names) then ("--ase_names " +  '"' + ase_names + '"') else ""} \
      ~{if defined(ase) then ("--ase " +  '"' + ase + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/bayesase:21.1.13.1--py_0"
  }
  parameter_meta {
    summary_one: "The sam summary file containing read counts after\\ndropping [Required]"
    summary_two: "The sam summary file containing read counts after\\ndropping [Required]"
    ase_names: "fastq filename [Required]"
    ase: "ASE totals file with read counts generated from sam\\ncompare script [Required]"
    out: "Output file containing check info [Required]"
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
  }
}