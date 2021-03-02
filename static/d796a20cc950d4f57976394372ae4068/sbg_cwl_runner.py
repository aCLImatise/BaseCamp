from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, Boolean, String, Int

Sbg_Cwl_Runner_V0_1_0 = CommandToolBuilder(tool="sbg_cwl_runner", base_command=["sbg-cwl-runner"], inputs=[ToolInput(tag="in_outdir", input_type=Directory(optional=True), prefix="--outdir", doc=InputDocumentation(doc="Directory to put results in [default: ./]")), ToolInput(tag="in_quiet", input_type=Boolean(optional=True), prefix="--quiet", doc=InputDocumentation(doc="Suppress logging messages")), ToolInput(tag="in_api_profile", input_type=String(optional=True), prefix="--api-profile", doc=InputDocumentation(doc="API profile name [default: default]")), ToolInput(tag="in_project", input_type=String(optional=True), prefix="--project", doc=InputDocumentation(doc="Project to run tasks in [default: default-sbg-cwl-runner-project]")), ToolInput(tag="in_poll_interval", input_type=Int(optional=True), prefix="--poll-interval", doc=InputDocumentation(doc="Polling interval to check for job status (in min) [default: 1]")), ToolInput(tag="in_workflow", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sbg_Cwl_Runner_V0_1_0().translate("wdl", allow_empty_container=True)

