version 1.0

task HubCheck {
  input {
    Boolean? no_tracks
    Boolean? check_settings
    Boolean? version
    Boolean? extra
    String? level
    Boolean? settings
    Boolean? udc_dir
    Boolean? print_meta
    String? cache_time
    String? verbose
    String http
  }
  command <<<
    hubCheck \
      ~{http} \
      ~{true="-noTracks" false="" no_tracks} \
      ~{true="-checkSettings" false="" check_settings} \
      ~{true="-version" false="" version} \
      ~{true="-extra" false="" extra} \
      ~{if defined(level) then ("-level " +  '"' + level + '"') else ""} \
      ~{true="-settings" false="" settings} \
      ~{true="-udcDir" false="" udc_dir} \
      ~{true="-printMeta" false="" print_meta} \
      ~{if defined(cache_time) then ("-cacheTime " +  '"' + cache_time + '"') else ""} \
      ~{if defined(verbose) then ("-verbose " +  '"' + verbose + '"') else ""}
  >>>
  parameter_meta {
    no_tracks: "- don't check remote files for tracks, just trackDb (faster)"
    check_settings: "- check trackDb settings to spec"
    version: "=[v?|url]     - version to validate settings against (defaults to version in hub.txt, or current standard)"
    extra: "=[file|url]     - accept settings in this file (or url)"
    level: "|required  - reject settings below this support level"
    settings: "- just list settings with support level"
    udc_dir: "=/dir/to/cache - place to put cache for remote bigBed/bigWigs. Will create this directory if not existing"
    print_meta: "- print the metadata for each track"
    cache_time: "- set cache refresh time in seconds, default 1"
    verbose: "- output verbosely"
    http: ""
  }
}