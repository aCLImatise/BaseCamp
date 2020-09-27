version 1.0

task Novasplice {
  input {
    File? vcf
    File? zipped_vcf
    File? reference
    File? zipped_reference
    File? bed
    Int? chr_lens
    String? percent
    File? path_dump_simdigrees
    Int? intermediate
    File? temp
    File? library_name
  }
  command <<<
    novasplice \
      ~{if defined(vcf) then ("--vcf " +  '"' + vcf + '"') else ""} \
      ~{if defined(zipped_vcf) then ("--zippedvcf " +  '"' + zipped_vcf + '"') else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(zipped_reference) then ("--zippedreference " +  '"' + zipped_reference + '"') else ""} \
      ~{if defined(bed) then ("--bed " +  '"' + bed + '"') else ""} \
      ~{if defined(chr_lens) then ("--chrlens " +  '"' + chr_lens + '"') else ""} \
      ~{if defined(percent) then ("--percent " +  '"' + percent + '"') else ""} \
      ~{if defined(path_dump_simdigrees) then ("--output " +  '"' + path_dump_simdigrees + '"') else ""} \
      ~{if defined(intermediate) then ("--intermediate " +  '"' + intermediate + '"') else ""} \
      ~{if defined(temp) then ("--temp " +  '"' + temp + '"') else ""} \
      ~{if defined(library_name) then ("--libraryname " +  '"' + library_name + '"') else ""}
  >>>
  parameter_meta {
    vcf: "Full path to the sorted vcf file being used"
    zipped_vcf: "Full path to the sorted zipped vcf file being used"
    reference: "Full path to the reference genome being used"
    zipped_reference: "Full path to the zipped reference genome being used"
    bed: "Full path to the reference exon boundary bed file\\nbeing used"
    chr_lens: "Full path to the chromosome length file being used"
    percent: "Lower bound percent to call novel splice site"
    path_dump_simdigrees: "Path to the output folder to dump simdigree's output\\nto. Default is working directory under\\n/novasplice_output"
    intermediate: "Path to output folder that will hold intermediate\\nfiles generated, not specific to the provided vcf.\\nEspecially useful when running NovaSplice on a large\\nnumber of VCFs that all come from the same reference\\nand make use of the same --bed option."
    temp: "Full path to an alternative directory to use for temp\\nfiles. Default is /tmp"
    library_name: "Name of the final file novasplice outputs with\\npredictions\\n"
  }
  output {
    File out_stdout = stdout()
    File out_path_dump_simdigrees = "${in_path_dump_simdigrees}"
  }
}