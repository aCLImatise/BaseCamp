from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Knock_Knock_Process_V0_1_0 = CommandToolBuilder(tool="knock_knock_process", base_command=["knock-knock", "process"], inputs=[ToolInput(tag="in_progress", input_type=Boolean(optional=True), prefix="--progress", doc=InputDocumentation(doc="show progress bars")), ToolInput(tag="in_stages", input_type=String(optional=True), prefix="--stages", doc=InputDocumentation(doc="")), ToolInput(tag="in_project_directory", input_type=String(), position=0, doc=InputDocumentation(doc="the base directory to store input data, reference\nannotations, and analysis output for a project")), ToolInput(tag="in_group", input_type=String(), position=1, doc=InputDocumentation(doc="group name")), ToolInput(tag="in_sample", input_type=String(), position=2, doc=InputDocumentation(doc="sample name"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Knock_Knock_Process_V0_1_0().translate("wdl", allow_empty_container=True)

