from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Boolean, String

Cgatreport_Get_V0_1_0 = CommandToolBuilder(tool="cgatreport_get", base_command=["cgatreport-get"], inputs=[ToolInput(tag="in_verbose", input_type=Int(optional=True), prefix="--verbose", doc=InputDocumentation(doc="loglevel. The higher, the more output [default=2]")), ToolInput(tag="in_view", input_type=Boolean(optional=True), prefix="--view", doc=InputDocumentation(doc="view keys in cache [default=False]")), ToolInput(tag="in_tracker", input_type=String(optional=True), prefix="--tracker", doc=InputDocumentation(doc="tracker to use [default=none]")), ToolInput(tag="in_tracks", input_type=String(optional=True), prefix="--tracks", doc=InputDocumentation(doc="tracks to include [default=none]")), ToolInput(tag="in_slices", input_type=String(optional=True), prefix="--slices", doc=InputDocumentation(doc="slices to include [default=none]")), ToolInput(tag="in_group_by", input_type=String(optional=True), prefix="--groupby", doc=InputDocumentation(doc="groupby by track or slice [default=slice]")), ToolInput(tag="in_format", input_type=String(optional=True), prefix="--format", doc=InputDocumentation(doc="output format [default=tsv]\n")), ToolInput(tag="in_python", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cgatreport_Get_V0_1_0().translate("wdl", allow_empty_container=True)

