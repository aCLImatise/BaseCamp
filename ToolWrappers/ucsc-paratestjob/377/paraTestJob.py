from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, String

Paratestjob_V0_1_0 = CommandToolBuilder(tool="paraTestJob", base_command=["paraTestJob"], inputs=[ToolInput(tag="in_crash", input_type=Boolean(optional=True), prefix="-crash", doc=InputDocumentation(doc="Try to write to NULL when done.")), ToolInput(tag="in_err", input_type=Boolean(optional=True), prefix="-err", doc=InputDocumentation(doc="Return -1 error code when done.")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="-output", doc=InputDocumentation(doc="Make some output in file as well.")), ToolInput(tag="in_heavy", input_type=String(optional=True), prefix="-heavy", doc=InputDocumentation(doc="Make output heavy: n extra lumberjack lines.")), ToolInput(tag="in_input", input_type=File(optional=True), prefix="-input", doc=InputDocumentation(doc="Make it read in a file too.")), ToolInput(tag="in_sleep", input_type=String(optional=True), prefix="-sleep", doc=InputDocumentation(doc="Sleep for N seconds."))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="Make some output in file as well."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Paratestjob_V0_1_0().translate("wdl", allow_empty_container=True)

