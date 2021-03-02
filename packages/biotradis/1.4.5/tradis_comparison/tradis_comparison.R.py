from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, String

Tradis_Comparison_R_V0_1_0 = CommandToolBuilder(tool="tradis_comparison.R", base_command=["tradis_comparison.R"], inputs=[ToolInput(tag="in_controls", input_type=Boolean(optional=True), prefix="--controls", doc=InputDocumentation(doc=": 'control' libraries, generally growth in a permissive")), ToolInput(tag="in_conditions", input_type=Boolean(optional=True), prefix="--conditions", doc=InputDocumentation(doc=": libraries exposed to the experimental condition being")), ToolInput(tag="in__output_filename", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc=": output filename")), ToolInput(tag="in_output_filename_diagnostic", input_type=File(optional=True), prefix="-p", doc=InputDocumentation(doc=": output filename for diagnostic plots")), ToolInput(tag="in_enable_filtering_minimum", input_type=Boolean(optional=True), prefix="-f", doc=InputDocumentation(doc=": enable filtering on minimum read counts")), ToolInput(tag="in__filter_enabled", input_type=Boolean(optional=True), prefix="-t", doc=InputDocumentation(doc=": if --filter is enabled, sets minimum read count necessary in one")), ToolInput(tag="in_cut_off", input_type=String(optional=True), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out__output_filename", output_type=File(optional=True), selector=InputSelector(input_to_select="in__output_filename", type_hint=File()), doc=OutputDocumentation(doc=": output filename")), ToolOutput(tag="out_output_filename_diagnostic", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_filename_diagnostic", type_hint=File()), doc=OutputDocumentation(doc=": output filename for diagnostic plots"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Tradis_Comparison_R_V0_1_0().translate("wdl", allow_empty_container=True)

