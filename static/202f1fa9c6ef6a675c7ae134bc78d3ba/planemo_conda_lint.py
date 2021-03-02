from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Planemo_Conda_Lint_V0_1_0 = CommandToolBuilder(tool="planemo_conda_lint", base_command=["planemo", "conda_lint"], inputs=[ToolInput(tag="in_recursive", input_type=Boolean(optional=True), prefix="--recursive", doc=InputDocumentation(doc="Recursively perform command for nested conda")), ToolInput(tag="in_directories_dot", input_type=String(), position=0, doc=InputDocumentation(doc="--help                          Show this message and exit."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Planemo_Conda_Lint_V0_1_0().translate("wdl", allow_empty_container=True)

