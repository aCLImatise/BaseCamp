from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, String

Pairtools_Flip_V0_1_0 = CommandToolBuilder(tool="pairtools_flip", base_command=["pairtools", "flip"], inputs=[ToolInput(tag="in_chrom_s_path", input_type=File(optional=True), prefix="--chroms-path", doc=InputDocumentation(doc="Chromosome order used to flip interchromosomal\nmates: path to a chromosomes file (e.g. UCSC\nchrom.sizes or similar) whose first column lists\nscaffold names. Any scaffolds not listed will be\nordered lexicographically following the names\nprovided.  [required]")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="output file. If the path ends with .gz or .lz4, the\noutput is pbgzip-/lz4c-compressed. By default, the\noutput is printed into stdout.")), ToolInput(tag="in_nproc_in", input_type=Int(optional=True), prefix="--nproc-in", doc=InputDocumentation(doc="Number of processes used by the auto-guessed input\ndecompressing command.  [default: 3]")), ToolInput(tag="in_nproc_out", input_type=Int(optional=True), prefix="--nproc-out", doc=InputDocumentation(doc="Number of processes used by the auto-guessed output\ncompressing command.  [default: 8]")), ToolInput(tag="in_cmd_in", input_type=File(optional=True), prefix="--cmd-in", doc=InputDocumentation(doc="A command to decompress the input file. If provided,\nfully overrides the auto-guessed command. Does not\nwork with stdin. Must read input from stdin and\nprint output into stdout. EXAMPLE: pbgzip -dc -n 3")), ToolInput(tag="in_cmd_out", input_type=File(optional=True), prefix="--cmd-out", doc=InputDocumentation(doc="A command to compress the output file. If provided,\nfully overrides the auto-guessed command. Does not\nwork with stdout. Must read input from stdin and\nprint output into stdout. EXAMPLE: pbgzip -c -n 8")), ToolInput(tag="in_pairs_path", input_type=String(optional=True), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="output file. If the path ends with .gz or .lz4, the\noutput is pbgzip-/lz4c-compressed. By default, the\noutput is printed into stdout."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pairtools_Flip_V0_1_0().translate("wdl", allow_empty_container=True)

