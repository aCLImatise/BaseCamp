from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, String

Varscan_Limit_V0_1_0 = CommandToolBuilder(tool="varscan_limit", base_command=["varscan", "limit"], inputs=[ToolInput(tag="in_regions_file", input_type=Boolean(optional=True), prefix="--regions-file", doc=InputDocumentation(doc="- a file of chromosome-start-stops, tab delimited")), ToolInput(tag="in_margin_size", input_type=Boolean(optional=True), prefix="--margin-size", doc=InputDocumentation(doc="- shoulder bases to allow on either side of targets [0]")), ToolInput(tag="in_output_file", input_type=File(optional=True), prefix="--output-file", doc=InputDocumentation(doc="- Output file for the matching variants")), ToolInput(tag="in_not_file", input_type=File(optional=True), prefix="--not-file", doc=InputDocumentation(doc="- Output file for variants NOT matching regions/positions")), ToolInput(tag="in_jar", input_type=String(optional=True), prefix="-jar", doc=InputDocumentation(doc="")), ToolInput(tag="in_options", input_type=String(), position=0, doc=InputDocumentation(doc="--positions-file - a file of chromosome-positions, tab delimited, or VCF"))], outputs=[ToolOutput(tag="out_output_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_file", type_hint=File()), doc=OutputDocumentation(doc="- Output file for the matching variants")), ToolOutput(tag="out_not_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_not_file", type_hint=File()), doc=OutputDocumentation(doc="- Output file for variants NOT matching regions/positions"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Varscan_Limit_V0_1_0().translate("wdl", allow_empty_container=True)

