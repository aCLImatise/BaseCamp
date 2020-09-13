version 1.0

task Eslalimap {
  input {
    Boolean? quiet_print_mapping
    Int? mask_a_two_a
    Int? mask_at_worf
    Int? mask_rf_two_a
    Int? mask_rf_two_rf
    Int? submap
    Boolean? amino
    Boolean? dna
    Boolean? rna
  }
  command <<<
    esl_alimap \
      ~{if (quiet_print_mapping) then "-q" else ""} \
      ~{if defined(mask_a_two_a) then ("--mask-a2a " +  '"' + mask_a_two_a + '"') else ""} \
      ~{if defined(mask_at_worf) then ("--mask-a2rf " +  '"' + mask_at_worf + '"') else ""} \
      ~{if defined(mask_rf_two_a) then ("--mask-rf2a " +  '"' + mask_rf_two_a + '"') else ""} \
      ~{if defined(mask_rf_two_rf) then ("--mask-rf2rf " +  '"' + mask_rf_two_rf + '"') else ""} \
      ~{if defined(submap) then ("--submap " +  '"' + submap + '"') else ""} \
      ~{if (amino) then "--amino" else ""} \
      ~{if (dna) then "--dna" else ""} \
      ~{if (rna) then "--rna" else ""}
  >>>
  parameter_meta {
    quiet_print_mapping: ": be quiet, don't print mapping of each column"
    mask_a_two_a: ": mask to <f>:'1'=msa1 aln       col x maps msa2 aln col"
    mask_at_worf: ": mask to <f>:'1'=msa1 aln       col x maps msa2 nongap RF col"
    mask_rf_two_a: ": mask to <f>:'1'=msa1 nongap RF col x maps msa2 aln col"
    mask_rf_two_rf: ": mask to <f>:'1'=msa1 nongap RF col x maps msa2 nongap RF col"
    submap: ": <msafile2> is subaln of <msafile1>, output mask to <f>"
    amino: ": <msafile{1,2}> contain protein alignments"
    dna: ": <msafile{1,2}> contain DNA alignments"
    rna: ": <msafile{1,2}> contain RNA alignments"
  }
  output {
    File out_stdout = stdout()
  }
}