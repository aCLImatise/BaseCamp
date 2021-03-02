from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean

Mapsifter_V0_1_0 = CommandToolBuilder(tool="mapsifter", base_command=["mapsifter"], inputs=[ToolInput(tag="in_output", input_type=File(optional=True), prefix="-output", doc=InputDocumentation(doc="Name of output file (default: stdout)")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="-verbose", doc=InputDocumentation(doc="print more run info")), ToolInput(tag="in_exclude", input_type=Boolean(optional=True), prefix="-exclude", doc=InputDocumentation(doc="exclude contained")), ToolInput(tag="in_upper", input_type=Boolean(optional=True), prefix="-upper", doc=InputDocumentation(doc="upper bound on scores")), ToolInput(tag="in_lower", input_type=Boolean(optional=True), prefix="-lower", doc=InputDocumentation(doc="lower bound on scores")), ToolInput(tag="in_target", input_type=Boolean(optional=True), prefix="-target", doc=InputDocumentation(doc="target regions file")), ToolInput(tag="in_about", input_type=Boolean(optional=True), prefix="-about", doc=InputDocumentation(doc="print about message")), ToolInput(tag="in_bed_format_file", input_type=File(), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="Name of output file (default: stdout)"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mapsifter_V0_1_0().translate("wdl", allow_empty_container=True)

