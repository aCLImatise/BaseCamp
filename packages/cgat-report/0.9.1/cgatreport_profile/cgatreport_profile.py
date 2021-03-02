from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Cgatreport_Profile_V0_1_0 = CommandToolBuilder(tool="cgatreport_profile", base_command=["cgatreport-profile"], inputs=[ToolInput(tag="in_section", input_type=String(optional=True), prefix="--section", doc=InputDocumentation(doc="only examine certain sections [default=[]]")), ToolInput(tag="in_time", input_type=String(optional=True), prefix="--time", doc=InputDocumentation(doc="time to show [default=seconds]")), ToolInput(tag="in_filter", input_type=String(optional=True), prefix="--filter", doc=InputDocumentation(doc="apply filter to output [default=all]\n")), ToolInput(tag="in_python", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cgatreport_Profile_V0_1_0().translate("wdl", allow_empty_container=True)

