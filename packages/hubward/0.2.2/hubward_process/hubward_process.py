from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Hubward_Process_V0_1_0 = CommandToolBuilder(tool="hubward_process", base_command=["hubward", "process"], inputs=[ToolInput(tag="in_or", input_type=String(), position=0, doc=InputDocumentation(doc="- a file called metadata-builder.py (in which case it is executed and")), ToolInput(tag="in_items", input_type=String(), position=0, doc=InputDocumentation(doc="Path to directory containing metadata.yaml file or metadata-\nbuilder.yaml file, or path to a group config YAML file. Can\nspecify multiple."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hubward_Process_V0_1_0().translate("wdl", allow_empty_container=True)

