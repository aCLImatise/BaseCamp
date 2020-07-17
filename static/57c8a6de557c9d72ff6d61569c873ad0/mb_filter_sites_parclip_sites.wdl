version 1.0

task MbFilterSitesParclipSites {
  input {
    String? padding_bp
    String mb_filter_sites
  }
  command <<<
    mb-filter-sites parclip_sites \
      ~{mb_filter_sites} \
      ~{if defined(padding_bp) then ("--padding_bp " +  '"' + padding_bp + '"') else ""}
  >>>
  parameter_meta {
    padding_bp: ""
    mb_filter_sites: ""
  }
}