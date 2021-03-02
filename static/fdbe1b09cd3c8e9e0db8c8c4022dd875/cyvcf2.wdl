version 1.0

task Cyvcf2 {
  input {
    String? chrom
    Int? start
    Int? end
    String? include
    String? exclude
    String? individual
    Boolean? no_inds
    Boolean? loglevel
    Boolean? silent
    String vcf_file
    String or
  }
  command <<<
    cyvcf2 \
      ~{vcf_file} \
      ~{or} \
      ~{if defined(chrom) then ("--chrom " +  '"' + chrom + '"') else ""} \
      ~{if defined(start) then ("--start " +  '"' + start + '"') else ""} \
      ~{if defined(end) then ("--end " +  '"' + end + '"') else ""} \
      ~{if defined(include) then ("--include " +  '"' + include + '"') else ""} \
      ~{if defined(exclude) then ("--exclude " +  '"' + exclude + '"') else ""} \
      ~{if defined(individual) then ("--individual " +  '"' + individual + '"') else ""} \
      ~{if (no_inds) then "--no-inds" else ""} \
      ~{if (loglevel) then "--loglevel" else ""} \
      ~{if (silent) then "--silent" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    chrom: "Specify what chromosome to include."
    start: "Specify the start of region."
    end: "Specify the end of the region."
    include: "Specify what info field to include."
    exclude: "Specify what info field to exclude."
    individual: "Only print genotype call for individual."
    no_inds: "Do not print genotypes."
    loglevel: "[DEBUG|INFO|WARNING|ERROR|CRITICAL]\\nSet the level of log output.  [default:\\nINFO]"
    silent: "Skip printing of vcf."
    vcf_file: ""
    or: ""
  }
  output {
    File out_stdout = stdout()
  }
}