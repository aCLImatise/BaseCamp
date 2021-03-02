from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Planemo_Workflow_Lint_V0_1_0 = CommandToolBuilder(tool="planemo_workflow_lint", base_command=["planemo", "workflow_lint"], inputs=[ToolInput(tag="in_report_x_unit", input_type=File(optional=True), prefix="--report_xunit", doc=InputDocumentation(doc="Output an XUnit report, useful for CI")), ToolInput(tag="in_skip", input_type=String(optional=True), prefix="--skip", doc=InputDocumentation(doc="Comma-separated list of lint tests to skip\n(e.g. passing --skip 'citations,xml_order'\nwould skip linting of citations and best-\npractice XML ordering.")), ToolInput(tag="in_testing", input_type=String(), position=0, doc=InputDocumentation(doc="--fail_level [warn|error]"))], outputs=[], container="quay.io/biocontainers/planemo:0.74.2--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Planemo_Workflow_Lint_V0_1_0().translate("wdl")

