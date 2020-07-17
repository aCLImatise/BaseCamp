version 1.0

task ConfigManta.py {
  input {
    File? normal_bam
    File? tumour_bam
    Boolean? exo_me
    Boolean? rna
    Boolean? un_stranded_rna
    File? reference_fast_a
    String? run_dir
    File? call_regions
  }
  command <<<
    configManta.py \
      ~{if defined(normal_bam) then ("--normalBam " +  '"' + normal_bam + '"') else ""} \
      ~{if defined(tumour_bam) then ("--tumourBam " +  '"' + tumour_bam + '"') else ""} \
      ~{true="--exome" false="" exo_me} \
      ~{true="--rna" false="" rna} \
      ~{true="--unstrandedRNA" false="" un_stranded_rna} \
      ~{if defined(reference_fast_a) then ("--referenceFasta " +  '"' + reference_fast_a + '"') else ""} \
      ~{if defined(run_dir) then ("--runDir " +  '"' + run_dir + '"') else ""} \
      ~{if defined(call_regions) then ("--callRegions " +  '"' + call_regions + '"') else ""}
  >>>
  parameter_meta {
    normal_bam: "Normal sample BAM or CRAM file. May be specified more than once, multiple inputs will be treated as each BAM file representing a different sample. [optional] (no default)"
    tumour_bam: "Tumor sample BAM or CRAM file. Only up to one tumor bam file accepted. [optional] (no default)"
    exo_me: "Set options for WES input: turn off depth filters"
    rna: "Set options for RNA-Seq input. Must specify exactly one bam input file"
    un_stranded_rna: "Set if RNA-Seq input is unstranded: Allows splice- junctions on either strand"
    reference_fast_a: "samtools-indexed reference fasta file [required]"
    run_dir: "Name of directory to be created where all workflow scripts and output will be written. Each analysis requires a separate directory. (default: MantaWorkflow)"
    call_regions: "Optionally provide a bgzip-compressed/tabix-indexed BED file containing the set of regions to call. No VCF output will be provided outside of these regions. The full genome will still be used to estimate statistics from the input (such as expected fragment size distribution). Only one BED file may be specified. (default: call the entire genome)"
  }
}