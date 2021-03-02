from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File, Boolean

Dm_Date_V0_1_0 = CommandToolBuilder(tool="dm_date", base_command=["dm_date"], inputs=[ToolInput(tag="in_date", input_type=String(optional=True), prefix="--date", doc=InputDocumentation(doc=": Print information about that date.")), ToolInput(tag="in_file", input_type=File(optional=True), prefix="--file", doc=InputDocumentation(doc=": Print out each date (1/line) in FILE")), ToolInput(tag="in_reference", input_type=File(optional=True), prefix="--reference", doc=InputDocumentation(doc=": Print out the last modification\ntime of FILE")), ToolInput(tag="in_rfc_two_eight_two_two", input_type=Boolean(optional=True), prefix="--rfc-2822", doc=InputDocumentation(doc=": Print the date in RFC 2822 format\n(any +FORMAT string is ignored)\nMon, 07 Aug 2006 12:34:56 -0600")), ToolInput(tag="in_universal", input_type=Boolean(optional=True), prefix="--universal", doc=InputDocumentation(doc=":\nConverts date(s) to UT time.\n"))], outputs=[ToolOutput(tag="out_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_file", type_hint=File()), doc=OutputDocumentation(doc=": Print out each date (1/line) in FILE")), ToolOutput(tag="out_reference", output_type=File(optional=True), selector=InputSelector(input_to_select="in_reference", type_hint=File()), doc=OutputDocumentation(doc=": Print out the last modification\ntime of FILE"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dm_Date_V0_1_0().translate("wdl", allow_empty_container=True)

