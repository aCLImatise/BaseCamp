class: CommandLineTool
id: gsutil_help_options.cwl
inputs:
- id: d
  doc: Shows HTTP requests/headers and additional debug info needed when posting support
    requests, including exception stack traces.
  type: boolean
  inputBinding:
    prefix: -D
- id: dd
  doc: Shows HTTP requests/headers, additional debug info, exception stack traces,
    plus HTTP upstream payload.
  type: boolean
  inputBinding:
    prefix: -DD
- id: m
  doc: Causes supported operations (acl ch, acl set, cp, mv, rm, rsync, and setmeta)
    to run in parallel. This can significantly improve performance if you are performing
    operations on a large number of files over a reasonably fast network connection.
    gsutil performs the specified operation using a combination of multi-threading
    and multi-processing, using a number of threads and processors determined by the
    parallel_thread_count and parallel_process_count values set in the boto configuration
    file. You might want to experiment with these values, as the best values can vary
    based on a number of factors, including network speed, number of CPUs, and available
    memory. Using the -m option may make your performance worse if you are using a
    slower network, such as the typical network speeds offered by non-business home
    network plans. It can also make your performance worse for cases that perform
    all operations locally (e.g., gsutil rsync, where both source and destination
    URLs are on the local disk), because it can "thrash" your local disk. If a download
    or upload operation using parallel transfer fails before the entire transfer is
    complete (e.g. failing after 300 of 1000 files have been transferred), you will
    need to restart the entire transfer. Also, although most commands will normally
    fail upon encountering an error when the -m flag is disabled, all commands will
    continue to try all operations when -m is enabled with multiple threads or processes,
    and the number of failed operations (if any) will be reported at the end of the
    command's execution.
  type: boolean
  inputBinding:
    prefix: -m
- id: o
  doc: Set/override values in the boto configuration value, in the format <section>:<name>=<value>,
    e.g. gsutil -o "Boto:proxy=host" ... This will not pass the option to gsutil integration
    tests, which run in a separate process.
  type: boolean
  inputBinding:
    prefix: -o
- id: q
  doc: Causes gsutil to perform operations quietly, i.e., without reporting progress
    indicators of files being copied or removed, etc. Errors are still reported. This
    option can be useful for running gsutil from a cron job that logs its output to
    a file, for which the only information desired in the log is failures.
  type: boolean
  inputBinding:
    prefix: -q
outputs: []
cwlVersion: v1.1
baseCommand:
- gsutil
- help
- options
