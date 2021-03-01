from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, Int, String

Pairtools_Stats_V0_1_0 = CommandToolBuilder(tool="pairtools_stats", base_command=["pairtools", "stats"], inputs=[ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="output stats tsv file.")), ToolInput(tag="in_merge", input_type=Boolean(optional=True), prefix="--merge", doc=InputDocumentation(doc="If specified, merge multiple input stats files instead\nof calculating statistics of a .pairs/.pairsam file.\nMerging is performed via summation of all overlapping\nstatistics. Non-overlapping statistics are appended to\nthe end of the file.")), ToolInput(tag="in_nproc_in", input_type=Int(optional=True), prefix="--nproc-in", doc=InputDocumentation(doc="Number of processes used by the auto-guessed input\ndecompressing command.  [default: 3]")), ToolInput(tag="in_nproc_out", input_type=Int(optional=True), prefix="--nproc-out", doc=InputDocumentation(doc="Number of processes used by the auto-guessed output\ncompressing command.  [default: 8]")), ToolInput(tag="in_cmd_in", input_type=File(optional=True), prefix="--cmd-in", doc=InputDocumentation(doc="A command to decompress the input file. If provided,\nfully overrides the auto-guessed command. Does not work\nwith stdin. Must read input from stdin and print output\ninto stdout. EXAMPLE: pbgzip -dc -n 3")), ToolInput(tag="in_cmd_out", input_type=File(optional=True), prefix="--cmd-out", doc=InputDocumentation(doc="A command to compress the output file. If provided,\nfully overrides the auto-guessed command. Does not work\nwith stdout. Must read input from stdin and print\noutput into stdout. EXAMPLE: pbgzip -c -n 8")), ToolInput(tag="in_merge_dot", input_type=String(), position=0, doc=InputDocumentation(doc="The files with paths ending with .gz/.lz4 are decompressed by pbgzip/lz4c."))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="output stats tsv file."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pairtools_Stats_V0_1_0().translate("wdl", allow_empty_container=True)

