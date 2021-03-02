from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Ftbl2Metxml_V0_1_0 = CommandToolBuilder(tool="ftbl2metxml", base_command=["ftbl2metxml"], inputs=[ToolInput(tag="in_network", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/influx_si:5.3.0--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ftbl2Metxml_V0_1_0().translate("wdl")

