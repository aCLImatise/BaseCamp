from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int, String

Websync_V0_1_0 = CommandToolBuilder(tool="webSync", base_command=["webSync"], inputs=[ToolInput(tag="in_debug", input_type=Boolean(optional=True), prefix="--debug", doc=InputDocumentation(doc="show debug messages")), ToolInput(tag="in_connections", input_type=Int(optional=True), prefix="--connections", doc=InputDocumentation(doc="Maximum number of parallel connections to the server,\ndefault 10")), ToolInput(tag="in_skip_scan", input_type=Boolean(optional=True), prefix="--skipScan", doc=InputDocumentation(doc="Do not scan local file sizes again, in case you know\nit is up to date\n")), ToolInput(tag="in_url", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Websync_V0_1_0().translate("wdl", allow_empty_container=True)

