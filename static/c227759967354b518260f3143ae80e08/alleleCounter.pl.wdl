version 1.0

task AlleleCounterpl {
  input {
    Boolean? bam
    File? output_file
    File? loci
    Boolean? ref
    Boolean? min_qual
    Boolean? map_qual
    Boolean? gender
    File? snp_six
    Boolean? version
    String allele_counts_do_tpl
  }
  command <<<
    alleleCounter_pl \
      ~{allele_counts_do_tpl} \
      ~{if (bam) then "-bam" else ""} \
      ~{if (output_file) then "-output" else ""} \
      ~{if (loci) then "-loci" else ""} \
      ~{if (ref) then "-ref" else ""} \
      ~{if (min_qual) then "-minqual" else ""} \
      ~{if (map_qual) then "-mapqual" else ""} \
      ~{if (gender) then "-gender" else ""} \
      ~{if (snp_six) then "-snp6" else ""} \
      ~{if (version) then "-version" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    bam: "BAM/CRAM file (expects co-located index)\\n- if CRAM see '-ref'"
    output_file: "Output file [STDOUT]"
    loci: "Alternate loci file (just needs chr pos)\\n- output is different, counts for each residue"
    ref: "genome.fa, required for CRAM (with colocated .fai)"
    min_qual: "Minimum base quality to include (integer) [30]"
    map_qual: "Minimum mapping quality of read (integer) [35]"
    gender: "flag, presence indicates loci file to be treated as gender SNPs.\\n- cannot be used with 's'"
    snp_six: "flag, presence indicates loci file is SNP6 format.\\n- cannot be used with 'g'\\n- changes output format"
    version: "Version number"
    allele_counts_do_tpl: "Required:"
  }
  output {
    File out_stdout = stdout()
    File out_output_file = "${in_output_file}"
    File out_loci = "${in_loci}"
    File out_snp_six = "${in_snp_six}"
  }
}