from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Realignpolishes_V0_1_0 = CommandToolBuilder(tool="realignPolishes", base_command=["realignPolishes"], inputs=[ToolInput(tag="in_actually_do_count", input_type=Boolean(optional=True), prefix="-q", doc=InputDocumentation(doc=": Don't actually do the work, just count the statistics")), ToolInput(tag="in_g", input_type=String(optional=True), prefix="-g", doc=InputDocumentation(doc="")), ToolInput(tag="in_e", input_type=String(optional=True), prefix="-e", doc=InputDocumentation(doc="")), ToolInput(tag="in_m", input_type=String(optional=True), prefix="-M", doc=InputDocumentation(doc="")), ToolInput(tag="in_merge", input_type=String(optional=True), prefix="-merge", doc=InputDocumentation(doc="")), ToolInput(tag="in_polishes", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_somewhere", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Realignpolishes_V0_1_0().translate("wdl", allow_empty_container=True)

