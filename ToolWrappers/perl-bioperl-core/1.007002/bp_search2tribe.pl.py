from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Float

Bp_Search2Tribe_Pl_V0_1_0 = CommandToolBuilder(tool="bp_search2tribe.pl", base_command=["bp_search2tribe.pl"], inputs=[ToolInput(tag="in__output_filename", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="- the output filename [default STDOUT]")), ToolInput(tag="in_search_result_format", input_type=String(optional=True), prefix="-f", doc=InputDocumentation(doc="- search result format (blast, fasta)\n(ssearch is fasta format). default is blast.")), ToolInput(tag="in_weight", input_type=Float(optional=True), prefix="--weight", doc=InputDocumentation(doc="- Change the default weight for E(0.0) hits\nto VALUE (default=200 (i.e. 1e-200) )"))], outputs=[ToolOutput(tag="out__output_filename", output_type=File(optional=True), selector=InputSelector(input_to_select="in__output_filename", type_hint=File()), doc=OutputDocumentation(doc="- the output filename [default STDOUT]"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bp_Search2Tribe_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

