from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, String

Pairtools_Markasdup_V0_1_0 = CommandToolBuilder(tool="pairtools_markasdup", base_command=["pairtools", "markasdup"], inputs=[ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="output .pairsam file. If the path ends with .gz or\n.lz4, the output is pbgzip-/lz4c-compressed. By\ndefault, the output is printed into stdout.")), ToolInput(tag="in_nproc_in", input_type=Int(optional=True), prefix="--nproc-in", doc=InputDocumentation(doc="Number of processes used by the auto-guessed input\ndecompressing command.  [default: 3]")), ToolInput(tag="in_nproc_out", input_type=Int(optional=True), prefix="--nproc-out", doc=InputDocumentation(doc="Number of processes used by the auto-guessed output\ncompressing command.  [default: 8]")), ToolInput(tag="in_cmd_in", input_type=File(optional=True), prefix="--cmd-in", doc=InputDocumentation(doc="A command to decompress the input file. If provided,\nfully overrides the auto-guessed command. Does not work\nwith stdin. Must read input from stdin and print output\ninto stdout. EXAMPLE: pbgzip -dc -n 3")), ToolInput(tag="in_cmd_out", input_type=File(optional=True), prefix="--cmd-out", doc=InputDocumentation(doc="A command to compress the output file. If provided,\nfully overrides the auto-guessed command. Does not work\nwith stdout. Must read input from stdin and print\noutput into stdout. EXAMPLE: pbgzip -c -n 8")), ToolInput(tag="in_pairs_am_path", input_type=String(optional=True), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="output .pairsam file. If the path ends with .gz or\n.lz4, the output is pbgzip-/lz4c-compressed. By\ndefault, the output is printed into stdout."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pairtools_Markasdup_V0_1_0().translate("wdl", allow_empty_container=True)

