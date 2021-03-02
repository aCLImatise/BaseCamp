from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Boolean

Paranodestatus_V0_1_0 = CommandToolBuilder(tool="paraNodeStatus", base_command=["paraNodeStatus"], inputs=[ToolInput(tag="in_retries", input_type=Int(optional=True), prefix="-retries", doc=InputDocumentation(doc="Number of retries to get in touch with machine.\nThe first retry is after 1/100th of a second.\nEach retry after that takes twice as long up to a maximum\nof 1 second per retry.  Default is 7 retries and takes\nabout a second.")), ToolInput(tag="in_long", input_type=Boolean(optional=True), prefix="-long", doc=InputDocumentation(doc="List details of current and recent jobs."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Paranodestatus_V0_1_0().translate("wdl", allow_empty_container=True)

