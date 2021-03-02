version 1.0

task SidrDefault {
  input {
    File? bam
    File? blast_results
    File? tax_dump
    File? location_save_thetarget
    File? to_remove
    Boolean? binary
    String? target
    String? level
    String format_dot
  }
  command <<<
    sidr default \
      ~{format_dot} \
      ~{if defined(bam) then ("--bam " +  '"' + bam + '"') else ""} \
      ~{if defined(blast_results) then ("--blastresults " +  '"' + blast_results + '"') else ""} \
      ~{if defined(tax_dump) then ("--taxdump " +  '"' + tax_dump + '"') else ""} \
      ~{if defined(location_save_thetarget) then ("--output " +  '"' + location_save_thetarget + '"') else ""} \
      ~{if defined(to_remove) then ("--toremove " +  '"' + to_remove + '"') else ""} \
      ~{if (binary) then "--binary" else ""} \
      ~{if defined(target) then ("--target " +  '"' + target + '"') else ""} \
      ~{if defined(level) then ("--level " +  '"' + level + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/sidr:0.0.2a2--pyh3252c3a_0"
  }
  parameter_meta {
    bam: "Alignment of reads to preliminary assembly, in BAM"
    blast_results: "Classification of preliminary assembly from BLAST\\n(or similar tools)."
    tax_dump: "Location of the NCBI Taxonomy dump. Default is\\n$BLASTDB."
    location_save_thetarget: "Location to save the contigs identified as the\\ntarget organism(optional)."
    to_remove: "Location to save the contigs identified as not\\nbelonging to the target organism (optional)."
    binary: "Use binary target/nontarget classification."
    target: "The identity of the target organism at the chosen\\nclassification level. It is recommended to use the\\norganism's phylum."
    level: "The classification level to use when constructing\\nthe model. Default is 'phylum'."
    format_dot: "-f, --fasta PATH         Preliminary assembly, in FASTA format."
  }
  output {
    File out_stdout = stdout()
  }
}