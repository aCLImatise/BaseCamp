from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean

Nf_Core_Modules_Lint_V0_1_0 = CommandToolBuilder(tool="nf_core_modules_lint", base_command=["nf-core", "modules", "lint"], inputs=[ToolInput(tag="in_tool", input_type=String(optional=True), prefix="--tool", doc=InputDocumentation(doc="or <tool/subtool>")), ToolInput(tag="in_local", input_type=Boolean(optional=True), prefix="--local", doc=InputDocumentation(doc="Run additional lint tests for local modules")), ToolInput(tag="in_passed", input_type=Boolean(optional=True), prefix="--passed", doc=InputDocumentation(doc="Show passed tests")), ToolInput(tag="in_repository_dot", input_type=String(), position=0, doc=InputDocumentation(doc="Options:"))], outputs=[], container="quay.io/biocontainers/nf-core:1.13.1--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Nf_Core_Modules_Lint_V0_1_0().translate("wdl")

