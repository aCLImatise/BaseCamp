from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Pepwindowall_V0_1_0 = CommandToolBuilder(tool="pepwindowall", base_command=["pepwindowall"], inputs=[ToolInput(tag="in_data_file", input_type=Boolean(optional=True), prefix="-datafile", doc=InputDocumentation(doc="datafile   [Enakai.dat] AAINDEX entry data file")), ToolInput(tag="in_window", input_type=Boolean(optional=True), prefix="-window", doc=InputDocumentation(doc="integer    [19] Window size (Integer 1 or more)")), ToolInput(tag="in_normalize", input_type=Boolean(optional=True), prefix="-normalize", doc=InputDocumentation(doc="boolean    [N] Normalize data values"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pepwindowall_V0_1_0().translate("wdl", allow_empty_container=True)

