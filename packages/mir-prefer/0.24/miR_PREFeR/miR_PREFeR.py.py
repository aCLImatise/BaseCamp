from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Mir_Prefer_Py_V0_1_0 = CommandToolBuilder(tool="miR_PREFeR.py", base_command=["miR_PREFeR.py"], inputs=[ToolInput(tag="in_log", input_type=Boolean(optional=True), prefix="--log", doc=InputDocumentation(doc="Generate a log file.")), ToolInput(tag="in_keep_tmp", input_type=Boolean(optional=True), prefix="--keep-tmp", doc=InputDocumentation(doc="After finish the whole pipeline, do not remove the\ntemporary folder that contains the intermidate files.")), ToolInput(tag="in_command", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_config_file", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mir_Prefer_Py_V0_1_0().translate("wdl", allow_empty_container=True)

