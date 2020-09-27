class: CommandLineTool
id: gcloud_compute_url_maps.cwl
inputs:
- id: in_add_host_rule
  doc: Add a rule to a URL map to map hosts to a path matcher.
  type: string
  inputBinding:
    position: 0
- id: in_add_path_matcher
  doc: Add a path matcher to a URL map.
  type: File
  inputBinding:
    position: 1
- id: in_create
  doc: Create a URL map.
  type: string
  inputBinding:
    position: 2
- id: in_delete
  doc: Delete URL maps.
  type: string
  inputBinding:
    position: 3
- id: in_describe
  doc: Describe a URL map.
  type: string
  inputBinding:
    position: 4
- id: in_edit
  doc: Modify URL maps.
  type: string
  inputBinding:
    position: 5
- id: in_invalidate_cdn_cache
  doc: Invalidate specified objects for a URL map in Cloud CDN caches.
  type: string
  inputBinding:
    position: 6
- id: in_list
  doc: List Google Compute Engine URL maps.
  type: string
  inputBinding:
    position: 7
- id: in_list_cdn_cache_invalidations
  doc: List Cloud CDN cache invalidations for a URL map.
  type: string
  inputBinding:
    position: 8
- id: in_remove_host_rule
  doc: Remove a host rule from a URL map.
  type: string
  inputBinding:
    position: 9
- id: in_remove_path_matcher
  doc: Remove a path matcher from a URL map.
  type: File
  inputBinding:
    position: 10
- id: in_set_default_service
  doc: Change the default service or default bucket of a URL map.
  type: string
  inputBinding:
    position: 11
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- gcloud
- compute
- url-maps
