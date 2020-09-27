version 1.0

task AnalyzeSNPs {
  input {
    Boolean? bank
    Boolean? t_cov
    Boolean? report
    Boolean? all
    Boolean? skip_header
    Boolean? skip_printing_bases
    Boolean? print_readnames
    Boolean? print_libid
    Boolean? print_qvs
    Boolean? print_reads_majority
    Boolean? min_snps
    Boolean? cum_qv
    Boolean? min_qv
    Boolean? eid
    Boolean? iid
    Boolean? display_based_coordinates
  }
  command <<<
    analyzeSNPs \
      ~{if (bank) then "-bank" else ""} \
      ~{if (t_cov) then "-tcov" else ""} \
      ~{if (report) then "-report" else ""} \
      ~{if (all) then "-all" else ""} \
      ~{if (skip_header) then "-H" else ""} \
      ~{if (skip_printing_bases) then "-B" else ""} \
      ~{if (print_readnames) then "-r" else ""} \
      ~{if (print_libid) then "-l" else ""} \
      ~{if (print_qvs) then "-q" else ""} \
      ~{if (print_reads_majority) then "-K" else ""} \
      ~{if (min_snps) then "-minsnps" else ""} \
      ~{if (cum_qv) then "-cumqv" else ""} \
      ~{if (min_qv) then "-minqv" else ""} \
      ~{if (eid) then "-eid" else ""} \
      ~{if (iid) then "-iid" else ""} \
      ~{if (display_based_coordinates) then "-1" else ""}
  >>>
  parameter_meta {
    bank: "bank where assembly is stored"
    t_cov: "print snp positions in TCOV format (DEFAULT)"
    report: "print a report on the snps"
    all: "print all positions (not just SNP positions)"
    skip_header: "Skip header"
    skip_printing_bases: "Skip printing bases"
    print_readnames: "Print readnames"
    print_libid: "Print libid"
    print_qvs: "Print qvs"
    print_reads_majority: "Don't print reads in majority"
    min_snps: "<val> Set Minimum number of consistent disagreeing reads to report (default: 1)"
    cum_qv: "<val> Set Minimum conflicting cummulative qv to report (default: 0)"
    min_qv: "<val> Set Minimum conflicting qv to report (default: 0)"
    eid: "Display eids"
    iid: "Display iids"
    display_based_coordinates: "Display 1-based gapped coordinates"
  }
  output {
    File out_stdout = stdout()
  }
}