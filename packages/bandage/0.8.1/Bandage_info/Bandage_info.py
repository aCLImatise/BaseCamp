from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, String

Bandage_Info_V0_1_0 = CommandToolBuilder(tool="Bandage_info", base_command=["Bandage", "info"], inputs=[ToolInput(tag="in_tsv", input_type=File(optional=True), prefix="--tsv", doc=InputDocumentation(doc="Output the information in a single tab-delimited line starting with the graph file")), ToolInput(tag="in_help_all", input_type=Boolean(optional=True), prefix="--helpall", doc=InputDocumentation(doc="View all command line settings")), ToolInput(tag="in_graph", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_tsv", output_type=File(optional=True), selector=InputSelector(input_to_select="in_tsv", type_hint=File()), doc=OutputDocumentation(doc="Output the information in a single tab-delimited line starting with the graph file"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bandage_Info_V0_1_0().translate("wdl", allow_empty_container=True)

