from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Pathogist_Run_V0_1_0 = CommandToolBuilder(tool="PATHOGIST_run", base_command=["PATHOGIST", "run"], inputs=[ToolInput(tag="in_new_config", input_type=Boolean(optional=True), prefix="--new_config", doc=InputDocumentation(doc="write a blank configuration file at path given by CONFIG")), ToolInput(tag="in_config", input_type=String(), position=0, doc=InputDocumentation(doc="path to input configuration file, or path to write a new\nconfiguration file"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pathogist_Run_V0_1_0().translate("wdl", allow_empty_container=True)

