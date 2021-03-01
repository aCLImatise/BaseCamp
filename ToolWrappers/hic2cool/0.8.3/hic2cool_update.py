from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, String

Hic2Cool_Update_V0_1_0 = CommandToolBuilder(tool="hic2cool_update", base_command=["hic2cool", "update"], inputs=[ToolInput(tag="in_outfile", input_type=File(optional=True), prefix="--outfile", doc=InputDocumentation(doc="optional new output file path")), ToolInput(tag="in_silent", input_type=Boolean(optional=True), prefix="--silent", doc=InputDocumentation(doc="if used, silence standard program output")), ToolInput(tag="in_warnings", input_type=Boolean(optional=True), prefix="--warnings", doc=InputDocumentation(doc="if used, print out non-critical WARNING messages,\nwhich are hidden by default. Silent mode takes\nprecedence over this\n")), ToolInput(tag="in_in_file", input_type=String(), position=0, doc=InputDocumentation(doc="cooler input file path"))], outputs=[ToolOutput(tag="out_outfile", output_type=File(optional=True), selector=InputSelector(input_to_select="in_outfile", type_hint=File()), doc=OutputDocumentation(doc="optional new output file path"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hic2Cool_Update_V0_1_0().translate("wdl", allow_empty_container=True)

