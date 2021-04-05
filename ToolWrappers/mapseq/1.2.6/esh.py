from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Esh_V0_1_0 = CommandToolBuilder(tool="esh", base_command=["esh"], inputs=[ToolInput(tag="in_web_server", input_type=Boolean(optional=True), prefix="--webserver", doc=InputDocumentation(doc="start webserver   [type: bool default: false]")), ToolInput(tag="in_dc_node", input_type=Boolean(optional=True), prefix="--dcnode", doc=InputDocumentation(doc="start computing node   [type: bool default: false]")), ToolInput(tag="in_dc_server", input_type=Boolean(optional=True), prefix="--dcserver", doc=InputDocumentation(doc="start TCP distributed computing server   [type: bool default: false]")), ToolInput(tag="in_dc_host", input_type=Boolean(optional=True), prefix="--dchost", doc=InputDocumentation(doc="connect via TCP to distributed computing host   [type: estr default: ]")), ToolInput(tag="in_dc_group", input_type=Boolean(optional=True), prefix="--dcgroup", doc=InputDocumentation(doc="distributed computing group to join   [type: estr default: ]")), ToolInput(tag="in_i", input_type=Boolean(optional=True), prefix="--i", doc=InputDocumentation(doc="[type: estr default: ]")), ToolInput(tag="in_s_file", input_type=Boolean(optional=True), prefix="--sfile", doc=InputDocumentation(doc="named socket file to connect with daemon   [type: estr default: ]")), ToolInput(tag="in_saddr", input_type=Boolean(optional=True), prefix="--saddr", doc=InputDocumentation(doc="socket address to listen/connect with daemon   [type: estr default: ]"))], outputs=[], container="quay.io/biocontainers/mapseq:1.2.6--h8dc0705_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Esh_V0_1_0().translate("wdl")

