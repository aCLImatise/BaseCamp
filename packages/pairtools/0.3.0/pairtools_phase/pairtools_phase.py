from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Boolean, Int

Pairtools_Phase_V0_1_0 = CommandToolBuilder(tool="pairtools_phase", base_command=["pairtools", "phase"], inputs=[ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="output file. If the path ends with .gz or .lz4,\nthe output is pbgzip-/lz4c-compressed. By default,\nthe output is printed into stdout.")), ToolInput(tag="in_phase_suffixes", input_type=String(optional=True), prefix="--phase-suffixes", doc=InputDocumentation(doc="phase suffixes.")), ToolInput(tag="in_clean_output", input_type=Boolean(optional=True), prefix="--clean-output", doc=InputDocumentation(doc="drop all columns besides the standard ones and\nphase1/2")), ToolInput(tag="in_nproc_in", input_type=Int(optional=True), prefix="--nproc-in", doc=InputDocumentation(doc="Number of processes used by the auto-guessed input\ndecompressing command.  [default: 3]")), ToolInput(tag="in_nproc_out", input_type=Int(optional=True), prefix="--nproc-out", doc=InputDocumentation(doc="Number of processes used by the auto-guessed\noutput compressing command.  [default: 8]")), ToolInput(tag="in_cmd_in", input_type=File(optional=True), prefix="--cmd-in", doc=InputDocumentation(doc="A command to decompress the input file. If\nprovided, fully overrides the auto-guessed\ncommand. Does not work with stdin. Must read input\nfrom stdin and print output into stdout. EXAMPLE:\npbgzip -dc -n 3")), ToolInput(tag="in_cmd_out", input_type=File(optional=True), prefix="--cmd-out", doc=InputDocumentation(doc="A command to compress the output file. If\nprovided, fully overrides the auto-guessed\ncommand. Does not work with stdout. Must read\ninput from stdin and print output into stdout.\nEXAMPLE: pbgzip -c -n 8")), ToolInput(tag="in_pairs_path", input_type=String(optional=True), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="output file. If the path ends with .gz or .lz4,\nthe output is pbgzip-/lz4c-compressed. By default,\nthe output is printed into stdout."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pairtools_Phase_V0_1_0().translate("wdl", allow_empty_container=True)

