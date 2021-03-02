from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int, Boolean

Harvesttools_V0_1_0 = CommandToolBuilder(tool="harvesttools", base_command=["harvesttools"], inputs=[ToolInput(tag="in__filter_name", input_type=String(optional=True), prefix="-i", doc=InputDocumentation(doc=",<filter name>,'<description>'")), ToolInput(tag="in_multifasta_alignment_output", input_type=String(optional=True), prefix="-B", doc=InputDocumentation(doc="<multi-fasta alignment output (concatenated LCBs)>")), ToolInput(tag="in_midpoint_re_root", input_type=String(optional=True), prefix="--midpoint-reroot", doc=InputDocumentation(doc="(reroot the tree at its midpoint after loading)")), ToolInput(tag="in_update_branch_values", input_type=Int(optional=True), prefix="-o", doc=InputDocumentation(doc="/1 (update the branch values to reflect genome length)")), ToolInput(tag="in_show_this_help", input_type=String(optional=True), prefix="-v", doc=InputDocumentation(doc="(show this help)")), ToolInput(tag="in_quiet_mode", input_type=Boolean(optional=True), prefix="-q", doc=InputDocumentation(doc="(quiet mode)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Harvesttools_V0_1_0().translate("wdl", allow_empty_container=True)

