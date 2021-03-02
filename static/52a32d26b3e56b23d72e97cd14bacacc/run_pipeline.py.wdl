version 1.0

task RunPipelinepy {
  input {
    File? assembly
    Int? length
    File? bed
    Directory? output_directory_put
    Int? cut_off
    File? gfa
    String? enzyme
    Int? iter
    File? dup
    Int? exp
    String? clean
    File? filter
    File? prnt
  }
  command <<<
    run_pipeline_py \
      ~{if defined(assembly) then ("--assembly " +  '"' + assembly + '"') else ""} \
      ~{if defined(length) then ("--length " +  '"' + length + '"') else ""} \
      ~{if defined(bed) then ("--bed " +  '"' + bed + '"') else ""} \
      ~{if defined(output_directory_put) then ("--output " +  '"' + output_directory_put + '"') else ""} \
      ~{if defined(cut_off) then ("--cutoff " +  '"' + cut_off + '"') else ""} \
      ~{if defined(gfa) then ("--gfa " +  '"' + gfa + '"') else ""} \
      ~{if defined(enzyme) then ("--enzyme " +  '"' + enzyme + '"') else ""} \
      ~{if defined(iter) then ("--iter " +  '"' + iter + '"') else ""} \
      ~{if defined(dup) then ("--dup " +  '"' + dup + '"') else ""} \
      ~{if defined(exp) then ("--exp " +  '"' + exp + '"') else ""} \
      ~{if defined(clean) then ("--clean " +  '"' + clean + '"') else ""} \
      ~{if defined(filter) then ("--filter " +  '"' + filter + '"') else ""} \
      ~{if defined(prnt) then ("--prnt " +  '"' + prnt + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/salsa2:2.2--py27h78a066a_0"
  }
  parameter_meta {
    assembly: "Path to initial assembly"
    length: "Length of contigs at start"
    bed: "Bed file of alignments sorted by read names"
    output_directory_put: "Output directory to put results"
    cut_off: "Minimum contig length to scaffold, default=1000"
    gfa: "GFA file for assembly"
    enzyme: "Restriction Enzyme used for experiment"
    iter: "Number of iterations to run, default = 3"
    dup: "File containing duplicated contig information"
    exp: "Expected Genome size of the assembled genome"
    clean: "Set this option to \\\"yes\\\" if you want to find\\nmisassemblies in input assembly"
    filter: "Filter bed file for contigs present in the assembly"
    prnt: "Set this option to \\\"yes\\\" if you want to output the\\nscaffolds sequence and agp file for each iteration\\n"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_directory_put = "${in_output_directory_put}"
    File out_prnt = "${in_prnt}"
  }
}