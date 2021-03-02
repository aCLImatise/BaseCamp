from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean

Dbxstat_V0_1_0 = CommandToolBuilder(tool="dbxstat", base_command=["dbxstat"], inputs=[ToolInput(tag="in_outfile", input_type=File(optional=True), prefix="-outfile", doc=InputDocumentation(doc="outfile    [*.dbxstat] Output file name")), ToolInput(tag="in_index_dir", input_type=Boolean(optional=True), prefix="-indexdir", doc=InputDocumentation(doc="directory  Index directory (optional)")), ToolInput(tag="in_minimum", input_type=Boolean(optional=True), prefix="-minimum", doc=InputDocumentation(doc="integer    [1] Minimum occurrences (Integer 1 or more)")), ToolInput(tag="in_maximum", input_type=Boolean(optional=True), prefix="-maximum", doc=InputDocumentation(doc="integer    [0] Maximum occurrences (0=no maximum)\n(Integer 0 or more)"))], outputs=[ToolOutput(tag="out_outfile", output_type=File(optional=True), selector=InputSelector(input_to_select="in_outfile", type_hint=File()), doc=OutputDocumentation(doc="outfile    [*.dbxstat] Output file name"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dbxstat_V0_1_0().translate("wdl", allow_empty_container=True)

