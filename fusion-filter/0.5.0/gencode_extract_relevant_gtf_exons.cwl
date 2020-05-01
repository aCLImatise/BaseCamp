#!/usr/bin/env cwl-runner

baseCommand:
- gencode_extract_relevant_gtf_exons.pl
class: CommandLineTool
cwlVersion: v1.0
id: gencode_extract_relevant_gtf_exons.pl
