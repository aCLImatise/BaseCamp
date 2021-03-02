from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, File, Int, Boolean

Csb_Csfrag_V0_1_0 = CommandToolBuilder(tool="csb_csfrag", base_command=["csb-csfrag"], inputs=[ToolInput(tag="in_database", input_type=Directory(optional=True), prefix="--database", doc=InputDocumentation(doc="PDBS25 database directory (containing PDBS25cs.scs)")), ToolInput(tag="in_shifts", input_type=File(optional=True), prefix="--shifts", doc=InputDocumentation(doc="assigned chemical shifts table (NMR STAR file\nfragment)")), ToolInput(tag="in_window", input_type=Int(optional=True), prefix="--window", doc=InputDocumentation(doc="sliding window size (default=8)")), ToolInput(tag="in_top", input_type=Int(optional=True), prefix="--top", doc=InputDocumentation(doc="maximum number per starting position (default=25)")), ToolInput(tag="in_cpu", input_type=Int(optional=True), prefix="--cpu", doc=InputDocumentation(doc="maximum degree of parallelism (default=8)")), ToolInput(tag="in_verbosity", input_type=Int(optional=True), prefix="--verbosity", doc=InputDocumentation(doc="verbosity level (default=1)")), ToolInput(tag="in_output", input_type=Directory(optional=True), prefix="--output", doc=InputDocumentation(doc="output directory (default=.)")), ToolInput(tag="in_filtered_map", input_type=Boolean(optional=True), prefix="--filtered-map", doc=InputDocumentation(doc="make an additional filtered fragment map of centroids\n(default=False)\n"))], outputs=[ToolOutput(tag="out_output", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="output directory (default=.)"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Csb_Csfrag_V0_1_0().translate("wdl", allow_empty_container=True)

