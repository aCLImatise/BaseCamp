version 1.0

task ExtractHAIRS {
  input {
    Int? qv_offset
    Int? mbq
    Int? mmq
    Int? realign_variants
    Int? hic
    Int? one_zero_x
    Int? pac_bio
    Int? ont
    Int? new_format
    File? vcf
    Int? maxis
    Int? minis
    Int? pe_only
    Int? indels
    Int? no_quality
    Int? tri_allelic
    File? ref
    File? out
    Boolean? region
    Int? ep
    Int? hom
  }
  command <<<
    extractHAIRS \
      ~{if defined(qv_offset) then ("--qvoffset " +  '"' + qv_offset + '"') else ""} \
      ~{if defined(mbq) then ("--mbq " +  '"' + mbq + '"') else ""} \
      ~{if defined(mmq) then ("--mmq " +  '"' + mmq + '"') else ""} \
      ~{if defined(realign_variants) then ("--realign_variants " +  '"' + realign_variants + '"') else ""} \
      ~{if defined(hic) then ("--hic " +  '"' + hic + '"') else ""} \
      ~{if defined(one_zero_x) then ("--10X " +  '"' + one_zero_x + '"') else ""} \
      ~{if defined(pac_bio) then ("--pacbio " +  '"' + pac_bio + '"') else ""} \
      ~{if defined(ont) then ("--ONT " +  '"' + ont + '"') else ""} \
      ~{if defined(new_format) then ("--new_format " +  '"' + new_format + '"') else ""} \
      ~{if defined(vcf) then ("--VCF " +  '"' + vcf + '"') else ""} \
      ~{if defined(maxis) then ("--maxIS " +  '"' + maxis + '"') else ""} \
      ~{if defined(minis) then ("--minIS " +  '"' + minis + '"') else ""} \
      ~{if defined(pe_only) then ("--PEonly " +  '"' + pe_only + '"') else ""} \
      ~{if defined(indels) then ("--indels " +  '"' + indels + '"') else ""} \
      ~{if defined(no_quality) then ("--noquality " +  '"' + no_quality + '"') else ""} \
      ~{if defined(tri_allelic) then ("--triallelic " +  '"' + tri_allelic + '"') else ""} \
      ~{if defined(ref) then ("--ref " +  '"' + ref + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if (region) then "--region" else ""} \
      ~{if defined(ep) then ("--ep " +  '"' + ep + '"') else ""} \
      ~{if defined(hom) then ("--hom " +  '"' + hom + '"') else ""}
  >>>
  parameter_meta {
    qv_offset: ": quality value offset, 33/64 depending on how quality values were encoded, default is 33"
    mbq: ": minimum base quality to consider a base for haplotype fragment, default 13"
    mmq: ": minimum read mapping quality to consider a read for phasing, default 20"
    realign_variants: ": Perform sensitive realignment and scoring of variants."
    hic: ": sets default maxIS to 40MB, prints matrix in new HiC format"
    one_zero_x: ": 10X reads. NOTE: Output fragments MUST be processed with LinkReads.py script after extractHAIRS to work with HapCUT2."
    pac_bio: ": Pacific Biosciences reads. Similar to --realign_variants, but with alignment parameters tuned for PacBio reads."
    ont: ": Oxford nanopore technology reads. Similar to --realign_variants, but with alignment parameters tuned for Oxford Nanopore Reads."
    new_format: ": prints matrix in new format. Requires --new_format option when running HapCUT2."
    vcf: ": variant file with genotypes for a single individual in VCF format (unzipped)"
    maxis: ": maximum insert size for a paired-end read to be considered as a single fragment for phasing, default 1000"
    minis: ": minimum insert size for a paired-end read to be considered as single fragment for phasing, default 0"
    pe_only: ": do not use single end reads, default is 0 (use all reads)"
    indels: ": extract reads spanning INDELS, default is 0, variants need to specified in VCF format to use this option"
    no_quality: ": if the bam file does not have quality string, this value will be used as the uniform quality value, default 0"
    tri_allelic: ": include variants with genotype 1/2 for parsing, default 0"
    ref: ": reference sequence file (in fasta format, gzipped is okay), optional but required for indels, should be indexed"
    out: ": output filename for haplotype fragments, if not provided, fragments will be output to stdout"
    region: "<chr:start-end> : chromosome and region in BAM file, useful to process individual chromosomes or genomic regions"
    ep: ": set to 1 to estimate HMM parameters from aligned reads (only with long reads), default = 0"
    hom: ": set to 1 to include homozygous variants for processing, default = 0 (only heterozygous)"
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
  }
}