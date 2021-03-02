from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, File, String

Reduce_Sr_V0_1_0 = CommandToolBuilder(tool="reduce_sr", base_command=["reduce_sr"], inputs=[ToolInput(tag="in_maximum_search_depth", input_type=Int(optional=True), prefix="--maximum-search-depth", doc=InputDocumentation(doc="Check at most this many possible containing SuperReads (100)")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="Output file name (reduce.tmp)")), ToolInput(tag="in_cmdline_parse", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_largest_kuni_tig", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="Output file name (reduce.tmp)"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Reduce_Sr_V0_1_0().translate("wdl", allow_empty_container=True)

