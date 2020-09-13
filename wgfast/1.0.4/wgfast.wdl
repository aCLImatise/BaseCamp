version 1.0

task Wgfast {
  input {
    File? reference_directory
    Directory? read_directory
    Int? processors
    Int? coverage
    Float? proportion
    String? keep
    String? subsample
    Int? sub_nums
    String? doc
    Directory? temp
    Float? fudge_factor
    String? only_subs
    String? model
    String? g_atk_method
  }
  command <<<
    wgfast \
      ~{if defined(reference_directory) then ("--reference_directory " +  '"' + reference_directory + '"') else ""} \
      ~{if defined(read_directory) then ("--read_directory " +  '"' + read_directory + '"') else ""} \
      ~{if defined(processors) then ("--processors " +  '"' + processors + '"') else ""} \
      ~{if defined(coverage) then ("--coverage " +  '"' + coverage + '"') else ""} \
      ~{if defined(proportion) then ("--proportion " +  '"' + proportion + '"') else ""} \
      ~{if defined(keep) then ("--keep " +  '"' + keep + '"') else ""} \
      ~{if defined(subsample) then ("--subsample " +  '"' + subsample + '"') else ""} \
      ~{if defined(sub_nums) then ("--subnums " +  '"' + sub_nums + '"') else ""} \
      ~{if defined(doc) then ("--doc " +  '"' + doc + '"') else ""} \
      ~{if defined(temp) then ("--temp " +  '"' + temp + '"') else ""} \
      ~{if defined(fudge_factor) then ("--fudge_factor " +  '"' + fudge_factor + '"') else ""} \
      ~{if defined(only_subs) then ("--only_subs " +  '"' + only_subs + '"') else ""} \
      ~{if defined(model) then ("--model " +  '"' + model + '"') else ""} \
      ~{if defined(g_atk_method) then ("--gatk_method " +  '"' + g_atk_method + '"') else ""}
  >>>
  parameter_meta {
    reference_directory: "path to reference file directory [REQUIRED]"
    read_directory: "path to directory of fastq files [REQUIRED]"
    processors: "# of processors to use - defaults to 2"
    coverage: "minimum SNP coverage required to be called a SNP -\\ndefaults to 3"
    proportion: "proportion of alleles to be called a SNP, defaults to\\n0.9"
    keep: "keep temp files?  Defaults to F"
    subsample: "Run subsample routine? Defaults to T"
    sub_nums: "number of subsamples to process, defaults to 100"
    doc: "run depth of coverage on all files?  Defaults to T"
    temp: "temporary directory for GATK analysis, defaults to\\n/tmp"
    fudge_factor: "How close does a subsample have to be from true\\nplacement?  Defaults to 0.1"
    only_subs: "Only run sub-sample routine and exit? Defaults to F"
    model: "which model to run with raxml, GTRGAMMA, ASC_GTRGAMMA,\\nGTRCAT, ASC_GTRCAT"
    g_atk_method: "How to call GATK? Defaults to\\nEMIT_ALL_CONFIDENT_SITES, can be EMIT_ALL_SITES\\n"
  }
  output {
    File out_stdout = stdout()
  }
}