version 1.0

task Gretelsnpper {
  input {
    String? contig
    String? bam
    Int? start_default_
    Int? end_default_length
    Int? depth
    String aggressively
    String var_call
    String for
    String variants
    String and
    String generate
    String a
    String vcf
  }
  command <<<
    gretel_snpper \
      ~{aggressively} \
      ~{var_call} \
      ~{for} \
      ~{variants} \
      ~{and} \
      ~{generate} \
      ~{a} \
      ~{vcf} \
      ~{if defined(contig) then ("--contig " +  '"' + contig + '"') else ""} \
      ~{if defined(bam) then ("--bam " +  '"' + bam + '"') else ""} \
      ~{if defined(start_default_) then ("-s " +  '"' + start_default_ + '"') else ""} \
      ~{if defined(end_default_length) then ("-e " +  '"' + end_default_length + '"') else ""} \
      ~{if defined(depth) then ("--depth " +  '"' + depth + '"') else ""}
  >>>
  parameter_meta {
    contig: "[-s S] [-e E]\\n[--depth DEPTH]"
    bam: "bam of reads aligned to (psuedo)-reference"
    start_default_: "start (default = 1)"
    end_default_length: "end (default = length of the reference)"
    depth: "number of reads that must feature a read to call that base\\nas a possible variant (default = 0)"
    aggressively: ""
    var_call: ""
    for: ""
    variants: ""
    and: ""
    generate: ""
    a: ""
    vcf: ""
  }
  output {
    File out_stdout = stdout()
  }
}