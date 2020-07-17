version 1.0

task ConfigureStrelkaGermlineWorkflow.py {
  input {
    File? bam
    File? ploidy
    File? no_compress
    String? call_continuous_vf
    Boolean? rna
    File? reference_fast_a
    File? in_del_candidates
    File? forced_gt
    Boolean? targeted
    File? call_regions
    String? run_dir
  }
  command <<<
    configureStrelkaGermlineWorkflow.py \
      ~{if defined(bam) then ("--bam " +  '"' + bam + '"') else ""} \
      ~{if defined(ploidy) then ("--ploidy " +  '"' + ploidy + '"') else ""} \
      ~{if defined(no_compress) then ("--noCompress " +  '"' + no_compress + '"') else ""} \
      ~{if defined(call_continuous_vf) then ("--callContinuousVf " +  '"' + call_continuous_vf + '"') else ""} \
      ~{true="--rna" false="" rna} \
      ~{if defined(reference_fast_a) then ("--referenceFasta " +  '"' + reference_fast_a + '"') else ""} \
      ~{if defined(in_del_candidates) then ("--indelCandidates " +  '"' + in_del_candidates + '"') else ""} \
      ~{if defined(forced_gt) then ("--forcedGT " +  '"' + forced_gt + '"') else ""} \
      ~{true="--targeted" false="" targeted} \
      ~{if defined(call_regions) then ("--callRegions " +  '"' + call_regions + '"') else ""} \
      ~{if defined(run_dir) then ("--runDir " +  '"' + run_dir + '"') else ""}
  >>>
  parameter_meta {
    bam: "Sample BAM or CRAM file. May be specified more than once, multiple inputs will be treated as each BAM file representing a different sample. [required] (no default)"
    ploidy: "Provide ploidy file in VCF. The VCF should include one sample column per input sample labeled with the same sample names found in the input BAM/CRAM RG header sections. Ploidy should be provided in records using the FORMAT/CN field, which are interpreted to span the range [POS+1, INFO/END]. Any CN value besides 1 or 0 will be treated as 2. File must be tabix indexed. (no default)"
    no_compress: "Provide BED file of regions where gVCF block compression is not allowed. File must be bgzip- compressed/tabix-indexed. (no default)"
    call_continuous_vf: "Call variants on CHROM without a ploidy prior assumption, issuing calls with continuous variant frequencies (no default)"
    rna: "Set options for RNA-Seq input."
    reference_fast_a: "samtools-indexed reference fasta file [required]"
    in_del_candidates: "Specify a VCF of candidate indel alleles. These alleles are always evaluated but only reported in the output when they are inferred to exist in the sample. The VCF must be tabix indexed. All indel alleles must be left-shifted/normalized, any unnormalized alleles will be ignored. This option may be specified more than once, multiple input VCFs will be merged. (default: None)"
    forced_gt: "Specify a VCF of candidate alleles. These alleles are always evaluated and reported even if they are unlikely to exist in the sample. The VCF must be tabix indexed. All indel alleles must be left- shifted/normalized, any unnormalized allele will trigger a runtime error. This option may be specified more than once, multiple input VCFs will be merged. Note that for any SNVs provided in the VCF, the SNV site will be reported (and for gVCF, excluded from block compression), but the specific SNV alleles are ignored. (default: None)"
    targeted: "Set options for exome or other targeted input: note in particular that this flag turns off high-depth filters"
    call_regions: "Optionally provide a bgzip-compressed/tabix-indexed BED file containing the set of regions to call. No VCF output will be provided outside of these regions. The full genome will still be used to estimate statistics from the input (such as expected depth per chromosome). Only one BED file may be specified. (default: call the entire genome)"
    run_dir: "Name of directory to be created where all workflow scripts and output will be written. Each analysis requires a separate directory. (default: StrelkaGermlineWorkflow)"
  }
}