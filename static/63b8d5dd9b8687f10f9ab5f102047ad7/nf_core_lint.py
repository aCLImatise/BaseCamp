from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Directory

Nf_Core_Lint_V0_1_0 = CommandToolBuilder(tool="nf_core_lint", base_command=["nf-core", "lint"], inputs=[ToolInput(tag="in_release", input_type=Boolean(optional=True), prefix="--release", doc=InputDocumentation(doc="Execute additional checks for release-ready workflows.")), ToolInput(tag="in_pipeline_directory", input_type=Directory(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Nf_Core_Lint_V0_1_0().translate("wdl", allow_empty_container=True)

