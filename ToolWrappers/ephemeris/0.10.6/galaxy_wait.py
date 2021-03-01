from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Boolean, String

Galaxy_Wait_V0_1_0 = CommandToolBuilder(tool="galaxy_wait", base_command=["galaxy-wait"], inputs=[ToolInput(tag="in_timeout", input_type=Int(optional=True), prefix="--timeout", doc=InputDocumentation(doc="Galaxy startup timeout in seconds. The default value\nof 0 waits forever")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Increase output verbosity.")), ToolInput(tag="in_galaxy", input_type=String(optional=True), prefix="--galaxy", doc=InputDocumentation(doc="Target Galaxy instance URL/IP address\n")), ToolInput(tag="in_usage", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Galaxy_Wait_V0_1_0().translate("wdl", allow_empty_container=True)

