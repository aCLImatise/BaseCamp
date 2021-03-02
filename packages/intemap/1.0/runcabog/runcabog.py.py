from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Runcabog_Py_V0_1_0 = CommandToolBuilder(tool="runcabog.py", base_command=["runcabog.py"], inputs=[ToolInput(tag="in_para_file", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_readfile", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_library_info_file", input_type=String(optional=True), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Runcabog_Py_V0_1_0().translate("wdl", allow_empty_container=True)

