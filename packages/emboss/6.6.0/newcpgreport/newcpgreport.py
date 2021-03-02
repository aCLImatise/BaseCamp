from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Newcpgreport_V0_1_0 = CommandToolBuilder(tool="newcpgreport", base_command=["newcpgreport"], inputs=[ToolInput(tag="in_window", input_type=Boolean(optional=True), prefix="-window", doc=InputDocumentation(doc="integer    [100] Window size (Integer 1 or more)")), ToolInput(tag="in_shift", input_type=Boolean(optional=True), prefix="-shift", doc=InputDocumentation(doc="integer    [1] Shift increment (Integer 1 or more)")), ToolInput(tag="in_min_len", input_type=Boolean(optional=True), prefix="-minlen", doc=InputDocumentation(doc="integer    [200] Minimum Length (Integer 1 or more)")), ToolInput(tag="in_min_oe", input_type=Boolean(optional=True), prefix="-minoe", doc=InputDocumentation(doc="float      [0.6] Minimum observed/expected (Number from\n0.000 to 10.000)")), ToolInput(tag="in_min_pc", input_type=Boolean(optional=True), prefix="-minpc", doc=InputDocumentation(doc="float      [50.] Minimum percentage (Number from 0.000\nto 100.000)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Newcpgreport_V0_1_0().translate("wdl", allow_empty_container=True)

