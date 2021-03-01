from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File

Gxwf_Lint_V0_1_0 = CommandToolBuilder(tool="gxwf_lint", base_command=["gxwf-lint"], inputs=[ToolInput(tag="in_training_topic", input_type=String(optional=True), prefix="--training-topic", doc=InputDocumentation(doc="If this is a training workflow, specify a training\ntopic.\n")), ToolInput(tag="in_path", input_type=File(), position=0, doc=InputDocumentation(doc="workflow path"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gxwf_Lint_V0_1_0().translate("wdl", allow_empty_container=True)

