from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, String

Pairtools_Restrict_V0_1_0 = CommandToolBuilder(tool="pairtools_restrict", base_command=["pairtools", "restrict"], inputs=[ToolInput(tag="in_frags", input_type=File(optional=True), prefix="--frags", doc=InputDocumentation(doc="a tab-separated BED file with the positions of\nrestriction fragments (chrom, start, end). Can be\ngenerated using cooler digest.  [required]")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="output .pairs/.pairsam file. If the path ends with\n.gz/.lz4, the output is compressed by pbgzip/lz4c. By\ndefault, the output is printed into stdout.")), ToolInput(tag="in_nproc_in", input_type=Int(optional=True), prefix="--nproc-in", doc=InputDocumentation(doc="Number of processes used by the auto-guessed input\ndecompressing command.  [default: 3]")), ToolInput(tag="in_nproc_out", input_type=Int(optional=True), prefix="--nproc-out", doc=InputDocumentation(doc="Number of processes used by the auto-guessed output\ncompressing command.  [default: 8]")), ToolInput(tag="in_cmd_in", input_type=File(optional=True), prefix="--cmd-in", doc=InputDocumentation(doc="A command to decompress the input file. If provided,\nfully overrides the auto-guessed command. Does not work\nwith stdin. Must read input from stdin and print output\ninto stdout. EXAMPLE: pbgzip -dc -n 3")), ToolInput(tag="in_cmd_out", input_type=File(optional=True), prefix="--cmd-out", doc=InputDocumentation(doc="A command to compress the output file. If provided,\nfully overrides the auto-guessed command. Does not work\nwith stdout. Must read input from stdin and print\noutput into stdout. EXAMPLE: pbgzip -c -n 8")), ToolInput(tag="in_the", input_type=String(), position=0, doc=InputDocumentation(doc="input is decompressed by pbgzip/lz4c. By default, the input is read"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="output .pairs/.pairsam file. If the path ends with\n.gz/.lz4, the output is compressed by pbgzip/lz4c. By\ndefault, the output is printed into stdout."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pairtools_Restrict_V0_1_0().translate("wdl", allow_empty_container=True)

