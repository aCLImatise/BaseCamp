from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, Array, String

Airr_Tools_Merge_V0_1_0 = CommandToolBuilder(tool="airr_tools_merge", base_command=["airr-tools", "merge"], inputs=[ToolInput(tag="in_output_file_name", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="Output file name.")), ToolInput(tag="in_drop", input_type=Boolean(optional=True), prefix="--drop", doc=InputDocumentation(doc="If specified, drop fields that do not exist in all\ninput files. Otherwise, include all columns in all\nfiles and fill missing data with empty strings.")), ToolInput(tag="in_list_airr_rearrangement", input_type=Array(t=String(), optional=True), prefix="-a", doc=InputDocumentation(doc="A list of AIRR rearrangement files.\n"))], outputs=[ToolOutput(tag="out_output_file_name", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_file_name", type_hint=File()), doc=OutputDocumentation(doc="Output file name."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Airr_Tools_Merge_V0_1_0().translate("wdl", allow_empty_container=True)

