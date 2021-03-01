from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String

Tripaille_Job_Add_Job_V0_1_0 = CommandToolBuilder(tool="tripaille_job_add_job", base_command=["tripaille", "job", "add_job"], inputs=[ToolInput(tag="in_priority", input_type=Int(optional=True), prefix="--priority", doc=InputDocumentation(doc="An integer score to prioritize the job  [default: 10]")), ToolInput(tag="in_name", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_module", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_callback", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_arguments", input_type=String(), position=3, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Tripaille_Job_Add_Job_V0_1_0().translate("wdl", allow_empty_container=True)

