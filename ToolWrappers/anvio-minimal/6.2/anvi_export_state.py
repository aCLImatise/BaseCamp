from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File, Boolean

Anvi_Export_State_V0_1_0 = CommandToolBuilder(tool="anvi_export_state", base_command=["anvi-export-state"], inputs=[ToolInput(tag="in_pan_or_profile_db", input_type=String(optional=True), prefix="--pan-or-profile-db", doc=InputDocumentation(doc="Anvi'o pan or profile database (and even genes\ndatabase in appropriate contexts).")), ToolInput(tag="in_output_file", input_type=File(optional=True), prefix="--output-file", doc=InputDocumentation(doc="File path to store results.")), ToolInput(tag="in_state", input_type=String(optional=True), prefix="--state", doc=InputDocumentation(doc="The state name to export.")), ToolInput(tag="in_list_states", input_type=Boolean(optional=True), prefix="--list-states", doc=InputDocumentation(doc="Show available states and exit."))], outputs=[ToolOutput(tag="out_output_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_file", type_hint=File()), doc=OutputDocumentation(doc="File path to store results."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Anvi_Export_State_V0_1_0().translate("wdl", allow_empty_container=True)

