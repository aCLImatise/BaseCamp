from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, String

Nf_Core_Lint_V0_1_0 = CommandToolBuilder(tool="nf_core_lint", base_command=["nf-core", "lint"], inputs=[ToolInput(tag="in_release", input_type=Boolean(optional=True), prefix="--release", doc=InputDocumentation(doc="Execute additional checks for release-ready")), ToolInput(tag="in_markdown", input_type=File(optional=True), prefix="--markdown", doc=InputDocumentation(doc="File to write linting results to (Markdown)")), ToolInput(tag="in_json", input_type=File(optional=True), prefix="--json", doc=InputDocumentation(doc="File to write linting results to (JSON)")), ToolInput(tag="in_workflows_dot", input_type=String(), position=0, doc=InputDocumentation(doc="-p, --show-passed      Show passing tests on the command line."))], outputs=[], container="quay.io/biocontainers/nf-core:1.12.1--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Nf_Core_Lint_V0_1_0().translate("wdl")

