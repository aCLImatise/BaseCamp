from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Ftbl2Netan_Py_V0_1_0 = CommandToolBuilder(tool="ftbl2netan.py", base_command=["ftbl2netan.py"], inputs=[ToolInput(tag="in_network", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ftbl2Netan_Py_V0_1_0().translate("wdl", allow_empty_container=True)

