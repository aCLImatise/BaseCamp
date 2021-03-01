version 1.0

task SvtoolsLsort {
  input {
    File? vcf_list
    Boolean? include_reference
    File? tempdir
    Int? batch_size
  }
  command <<<
    svtools lsort \
      ~{if defined(vcf_list) then ("--vcf-list " +  '"' + vcf_list + '"') else ""} \
      ~{if (include_reference) then "--include-reference" else ""} \
      ~{if defined(tempdir) then ("--tempdir " +  '"' + tempdir + '"') else ""} \
      ~{if defined(batch_size) then ("--batchsize " +  '"' + batch_size + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    vcf_list: "file containing a line-delimited list of VCF files to\\ncombine and sort"
    include_reference: "whether or not to include homozygous reference or\\nmissing calls in the output."
    tempdir: "temporary directory"
    batch_size: "number of files to sort in batch"
  }
  output {
    File out_stdout = stdout()
  }
}