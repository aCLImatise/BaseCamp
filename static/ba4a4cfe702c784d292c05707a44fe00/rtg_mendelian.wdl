version 1.0

task RtgMendelian {
  input {
    File? vcf_file_containing
    File? set_output_annotated
    File? output_consistent
    File? output_inconsistent
    String? template
    Boolean? all_records
    Boolean? lenient
    Float? min_concordance
    File? pedigree
    Boolean? no_gzip
  }
  command <<<
    rtg mendelian \
      ~{if defined(vcf_file_containing) then ("--input " +  '"' + vcf_file_containing + '"') else ""} \
      ~{if defined(set_output_annotated) then ("--output " +  '"' + set_output_annotated + '"') else ""} \
      ~{if defined(output_consistent) then ("--output-consistent " +  '"' + output_consistent + '"') else ""} \
      ~{if defined(output_inconsistent) then ("--output-inconsistent " +  '"' + output_inconsistent + '"') else ""} \
      ~{if defined(template) then ("--template " +  '"' + template + '"') else ""} \
      ~{if (all_records) then "--all-records" else ""} \
      ~{if (lenient) then "--lenient" else ""} \
      ~{if defined(min_concordance) then ("--min-concordance " +  '"' + min_concordance + '"') else ""} \
      ~{if defined(pedigree) then ("--pedigree " +  '"' + pedigree + '"') else ""} \
      ~{if (no_gzip) then "--no-gzip" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/rtg-tools:3.12--0"
  }
  parameter_meta {
    vcf_file_containing: "VCF file containing multi-sample variant\\ncalls. Use '-' to read from standard input"
    set_output_annotated: "if set, output annotated calls to this VCF\\nfile. Use '-' to write to standard output"
    output_consistent: "if set, output only consistent calls to this\\nVCF file"
    output_inconsistent: "if set, output only non-Mendelian calls to\\nthis VCF file"
    template: "SDF containing the reference genome"
    all_records: "use all records, regardless of filters\\n(Default is to only process records where\\nFILTER is \\\".\\\" or \\\"PASS\\\")"
    lenient: "allow homozygous diploid calls in place of\\nhaploid calls and assume missing values are\\nequal to the reference"
    min_concordance: "percentage concordance required for consistent\\nparentage (Default is 99.0)"
    pedigree: "genome relationships PED file (Default is to\\nextract pedigree information from VCF header\\nfields)"
    no_gzip: "do not gzip the output"
  }
  output {
    File out_stdout = stdout()
    File out_set_output_annotated = "${in_set_output_annotated}"
    File out_output_consistent = "${in_output_consistent}"
    File out_output_inconsistent = "${in_output_inconsistent}"
  }
}