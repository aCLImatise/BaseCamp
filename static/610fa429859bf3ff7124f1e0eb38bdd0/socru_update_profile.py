from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, String

Socru_Update_Profile_V0_1_0 = CommandToolBuilder(tool="socru_update_profile", base_command=["socru_update_profile"], inputs=[ToolInput(tag="in_output_file", input_type=File(optional=True), prefix="--output_file", doc=InputDocumentation(doc="Output filename (default: updated_profile.txt)")), ToolInput(tag="in_debug", input_type=Boolean(optional=True), prefix="--debug", doc=InputDocumentation(doc="Turn on debugging (default: False)")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Turn on verbose output (default: False)")), ToolInput(tag="in_so_cru_output_filename", input_type=String(), position=0, doc=InputDocumentation(doc="Socru output file")), ToolInput(tag="in_profile_filename", input_type=String(), position=1, doc=InputDocumentation(doc="profile.txt from database"))], outputs=[ToolOutput(tag="out_output_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_file", type_hint=File()), doc=OutputDocumentation(doc="Output filename (default: updated_profile.txt)"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Socru_Update_Profile_V0_1_0().translate("wdl", allow_empty_container=True)

