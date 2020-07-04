version 1.0

task ConfigureStrelkaSomaticWorkflow.py {
  input {
    File? normal_bam
    File? tumour_bam
    Boolean? output_callable_regions
    File? reference_fast_a
    File? in_del_candidates
    File? forced_gt
    Boolean? targeted
    File? call_regions
    String? run_dir
  }
  command <<<
    configureStrelkaSomaticWorkflow.py \
      ~{if defined(normal_bam) then ("--normalBam " +  '"' + normal_bam + '"') else ""} \
      ~{if defined(tumour_bam) then ("--tumourBam " +  '"' + tumour_bam + '"') else ""} \
      ~{true="--outputCallableRegions" false="" output_callable_regions} \
      ~{if defined(reference_fast_a) then ("--referenceFasta " +  '"' + reference_fast_a + '"') else ""} \
      ~{if defined(in_del_candidates) then ("--indelCandidates " +  '"' + in_del_candidates + '"') else ""} \
      ~{if defined(forced_gt) then ("--forcedGT " +  '"' + forced_gt + '"') else ""} \
      ~{true="--targeted" false="" targeted} \
      ~{if defined(call_regions) then ("--callRegions " +  '"' + call_regions + '"') else ""} \
      ~{if defined(run_dir) then ("--runDir " +  '"' + run_dir + '"') else ""}
  >>>
  parameter_meta {
    normal_bam: "Normal sample BAM or CRAM file. (no default)"
    tumour_bam: "Tumor sample BAM or CRAM file. [required] (no default)"
    output_callable_regions: "Output a bed file describing somatic callable regions of the genome"
    reference_fast_a: "samtools-indexed reference fasta file [required]"
    in_del_candidates: "Specify a VCF of candidate indel alleles. These alleles are always evaluated but only reported in the output when they are inferred to exist in the sample. The VCF must be tabix indexed. All indel alleles must be left-shifted/normalized, any unnormalized alleles will be ignored. This option may be specified more than once, multiple input VCFs will be merged. (default: None)"
    forced_gt: "Specify a VCF of candidate alleles. These alleles are always evaluated and reported even if they are unlikely to exist in the sample. The VCF must be tabix indexed. All indel alleles must be left- shifted/normalized, any unnormalized allele will trigger a runtime error. This option may be specified more than once, multiple input VCFs will be merged. Note that for any SNVs provided in the VCF, the SNV site will be reported (and for gVCF, excluded from block compression), but the specific SNV alleles are ignored. (default: None)"
    targeted: "Set options for exome or other targeted input: note in particular that this flag turns off high-depth filters"
    call_regions: "Optionally provide a bgzip-compressed/tabix-indexed BED file containing the set of regions to call. No VCF output will be provided outside of these regions. The full genome will still be used to estimate statistics from the input (such as expected depth per chromosome). Only one BED file may be specified. (default: call the entire genome)"
    run_dir: "Name of directory to be created where all workflow scripts and output will be written. Each analysis requires a separate directory. (default: StrelkaSomaticWorkflow)"
  }
}