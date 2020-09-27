version 1.0

task Vcfintersect {
  input {
    File? bed
    File? vcf_file
  }
  command <<<
    vcfintersect \
      ~{vcf_file} \
      ~{if defined(bed) then ("--bed " +  '"' + bed + '"') else ""}
  >>>
  parameter_meta {
    bed: "use intervals provided by this BED file\\n-R, --region REGION       use 1-based tabix-style region (e.g. chrZ:10-20), multiples allowed\\n-S, --start-only          don't use the reference length information in the record to determine\\noverlap status, just use the start posiion\\n-v, --invert              invert the selection, printing only records which would\\nnot have been printed out\\n-i, --intersect-vcf FILE  use this VCF for set intersection generation\\n-u, --union-vcf FILE      use this VCF for set union generation\\n-w, --window-size N       compare records up to this many bp away (default 30)\\n-r, --reference FILE      FASTA reference file, required with -i and -u\\n-l, --loci                output whole loci when one alternate allele matches\\n-m, --ref-match           intersect on the basis of record REF string\\n-t, --tag TAG             attach TAG to each record's info field if it would intersect\\n-V, --tag-value VAL       use this value to indicate that the allele is passing\\n'.' will be used otherwise.  default: 'PASS'\\n-M, --merge-from FROM-TAG\\n-T, --merge-to   TO-TAG   merge from FROM-TAG used in the -i file, setting TO-TAG\\nin the current file."
    vcf_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}