from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Ftbl2Kvh_Py_V0_1_0 = CommandToolBuilder(tool="ftbl2kvh.py", base_command=["ftbl2kvh.py"], inputs=[ToolInput(tag="in_network", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/influx_si:5.4.0--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ftbl2Kvh_Py_V0_1_0().translate("wdl")

