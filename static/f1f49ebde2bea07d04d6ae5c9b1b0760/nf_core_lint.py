from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, String

Nf_Core_Lint_V0_1_0 = CommandToolBuilder(tool="nf_core_lint", base_command=["nf-core", "lint"], inputs=[ToolInput(tag="in_release", input_type=Boolean(optional=True), prefix="--release", doc=InputDocumentation(doc="Execute additional checks for release-ready")), ToolInput(tag="in_show_passed", input_type=Boolean(optional=True), prefix="--show-passed", doc=InputDocumentation(doc="Show passing tests on the command line")), ToolInput(tag="in_fail_ignored", input_type=Boolean(optional=True), prefix="--fail-ignored", doc=InputDocumentation(doc="Convert ignored tests to failures")), ToolInput(tag="in_markdown", input_type=File(optional=True), prefix="--markdown", doc=InputDocumentation(doc="File to write linting results to (Markdown)")), ToolInput(tag="in_json", input_type=File(optional=True), prefix="--json", doc=InputDocumentation(doc="File to write linting results to (JSON)")), ToolInput(tag="in_workflows_dot", input_type=String(), position=0, doc=InputDocumentation(doc="-f, --fix <test>       Attempt to automatically fix specified lint test"))], outputs=[], container="quay.io/biocontainers/nf-core:1.13.3--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Nf_Core_Lint_V0_1_0().translate("wdl")

