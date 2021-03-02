from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Jstack_V0_1_0 = CommandToolBuilder(tool="jstack", base_command=["jstack"], inputs=[ToolInput(tag="in_long_listing_information", input_type=Boolean(optional=True), prefix="-l", doc=InputDocumentation(doc="long listing. Prints additional information about locks")), ToolInput(tag="in_extended_listing_prints", input_type=Boolean(optional=True), prefix="-e", doc=InputDocumentation(doc="extended listing. Prints additional information about threads")), ToolInput(tag="in_pid", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Jstack_V0_1_0().translate("wdl", allow_empty_container=True)

