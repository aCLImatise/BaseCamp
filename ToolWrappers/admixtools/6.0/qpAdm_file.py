from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Qpadm_File_V0_1_0 = CommandToolBuilder(tool="qpAdm_file", base_command=["qpAdm", "file"], inputs=[ToolInput(tag="in_bad", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_params_dot_dot_dot_dot", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Qpadm_File_V0_1_0().translate("wdl", allow_empty_container=True)

