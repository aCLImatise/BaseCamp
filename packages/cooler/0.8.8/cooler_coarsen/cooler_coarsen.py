from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String, File

Cooler_Coarsen_V0_1_0 = CommandToolBuilder(tool="cooler_coarsen", base_command=["cooler", "coarsen"], inputs=[ToolInput(tag="in_factor", input_type=Int(optional=True), prefix="--factor", doc=InputDocumentation(doc="Gridding factor. The contact matrix is\ncoarsegrained by grouping each chromosomal contact\nblock into k-by-k element tiles  [default: 2]")), ToolInput(tag="in_nproc", input_type=Int(optional=True), prefix="--nproc", doc=InputDocumentation(doc="Number of processes to use for batch processing\nchunks of pixels [default: 1, i.e. no process pool]")), ToolInput(tag="in_chunksize", input_type=Int(optional=True), prefix="--chunksize", doc=InputDocumentation(doc="Number of pixels allocated to each process\n[default: 10000000]")), ToolInput(tag="in_field", input_type=String(optional=True), prefix="--field", doc=InputDocumentation(doc="Specify the names of value columns to merge as\n'<name>'. Repeat the `--field` option for each one.\nUse '<name>,dtype=<dtype>' to specify the dtype.\nInclude ',agg=<agg>' to specify an aggregation\nfunction different from 'sum'.")), ToolInput(tag="in_out", input_type=File(optional=True), prefix="--out", doc=InputDocumentation(doc="Output file or URI  [required]")), ToolInput(tag="in_cool_path", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_out", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out", type_hint=File()), doc=OutputDocumentation(doc="Output file or URI  [required]"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cooler_Coarsen_V0_1_0().translate("wdl", allow_empty_container=True)

