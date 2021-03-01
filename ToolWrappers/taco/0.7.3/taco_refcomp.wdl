version 1.0

task TacoRefcomp {
  input {
    Directory? output_dir
    Int? num_processes
    Boolean? cp_at
    String? cp_at_species
    String? cp_at_genome
    File? ref_gtf
    File? test_gtf
  }
  command <<<
    taco_refcomp \
      ~{if defined(output_dir) then ("--output-dir " +  '"' + output_dir + '"') else ""} \
      ~{if defined(num_processes) then ("--num-processes " +  '"' + num_processes + '"') else ""} \
      ~{if (cp_at) then "--cpat" else ""} \
      ~{if defined(cp_at_species) then ("--cpat-species " +  '"' + cp_at_species + '"') else ""} \
      ~{if defined(cp_at_genome) then ("--cpat-genome " +  '"' + cp_at_genome + '"') else ""} \
      ~{if defined(ref_gtf) then ("--ref-gtf " +  '"' + ref_gtf + '"') else ""} \
      ~{if defined(test_gtf) then ("--test-gtf " +  '"' + test_gtf + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    output_dir: "Directory for reference comparison output (default:\\ntaco_compare)"
    num_processes: "Run tool in parallel with N processes. (note: each\\ncore processes 1 chromosome) (default: 1)"
    cp_at: "Run CPAT tool to for coding potential scoring. (CPAT\\nfunction currently only supports Human, Mouse, and\\nZebrafish) (WARNING: The CPAT tool can take over an\\nhour) (default: False)"
    cp_at_species: "Select either: human, mouse, zebrafish (default:\\nhuman)"
    cp_at_genome: "Provide a genome fasta for the genome used to produce\\nassemblies being compared. Required if \\\"--cpat\\\" used.\\nCPAT uses this to obtain sequence for the provided\\ntranscripts (default: None)"
    ref_gtf: "Reference GTF file to compare against (default: None)"
    test_gtf: "GTF file used for comparison (default: None)\\n"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_dir = "${in_output_dir}"
  }
}