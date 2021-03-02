from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Mock_Cwl_Runner_V0_1_0 = CommandToolBuilder(tool="mock_cwl_runner", base_command=["mock-cwl-runner"], inputs=[ToolInput(tag="in_quiet", input_type=Boolean(optional=True), prefix="--quiet", doc=InputDocumentation(doc="")), ToolInput(tag="in_outdir", input_type=String(optional=True), prefix="--outdir", doc=InputDocumentation(doc="")), ToolInput(tag="in_process_file", input_type=String(), position=0, doc=InputDocumentation(doc="jobfile"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mock_Cwl_Runner_V0_1_0().translate("wdl", allow_empty_container=True)

