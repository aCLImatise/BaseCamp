version 1.0

task GcloudComputeUrlmaps {
  input {
    String add_host_rule
    File add_path_matcher
    String create
    String delete
    String describe
    String edit
    String invalidate_cdn_cache
    String list
    String list_cdn_cache_invalidations
    String remove_host_rule
    File remove_path_matcher
    String set_default_service
  }
  command <<<
    gcloud compute url_maps \
      ~{add_host_rule} \
      ~{add_path_matcher} \
      ~{create} \
      ~{delete} \
      ~{describe} \
      ~{edit} \
      ~{invalidate_cdn_cache} \
      ~{list} \
      ~{list_cdn_cache_invalidations} \
      ~{remove_host_rule} \
      ~{remove_path_matcher} \
      ~{set_default_service}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    add_host_rule: "Add a rule to a URL map to map hosts to a path matcher."
    add_path_matcher: "Add a path matcher to a URL map."
    create: "Create a URL map."
    delete: "Delete URL maps."
    describe: "Describe a URL map."
    edit: "Modify URL maps."
    invalidate_cdn_cache: "Invalidate specified objects for a URL map in Cloud CDN caches."
    list: "List Google Compute Engine URL maps."
    list_cdn_cache_invalidations: "List Cloud CDN cache invalidations for a URL map."
    remove_host_rule: "Remove a host rule from a URL map."
    remove_path_matcher: "Remove a path matcher from a URL map."
    set_default_service: "Change the default service or default bucket of a URL map."
  }
  output {
    File out_stdout = stdout()
  }
}