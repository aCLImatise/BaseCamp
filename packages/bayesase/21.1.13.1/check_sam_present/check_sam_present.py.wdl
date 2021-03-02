version 1.0

task CheckSamPresentpy {
  input {
    File? fq
    String? aln_type
    Int? sam_one
    Int? sam_two
    File? out
  }
  command <<<
    check_sam_present_py \
      ~{if defined(fq) then ("--fq " +  '"' + fq + '"') else ""} \
      ~{if defined(aln_type) then ("--alnType " +  '"' + aln_type + '"') else ""} \
      ~{if defined(sam_one) then ("--sam1 " +  '"' + sam_one + '"') else ""} \
      ~{if defined(sam_two) then ("--sam2 " +  '"' + sam_two + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/bayesase:21.1.13.1--py_0"
  }
  parameter_meta {
    fq: "Name of the fq file]"
    aln_type: "Input SE for single end or PE for paired end\\nalignments [Default = SE]"
    sam_one: "sam file used in sam compare script, aligned to G1\\n[Required]"
    sam_two: "sam file used in sam compare script, aligned to G2\\n[Required]"
    out: "Output file containing info on whether each fq file\\nhas 2 sam files [Required]\\n"
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
  }
}