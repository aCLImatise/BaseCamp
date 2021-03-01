from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Planemo_Test_Reports_V0_1_0 = CommandToolBuilder(tool="planemo_test_reports", base_command=["planemo", "test_reports"], inputs=[ToolInput(tag="in_test_output", input_type=File(optional=True), prefix="--test_output", doc=InputDocumentation(doc="Output test report (HTML - for humans) defaults\nto tool_test_output.html.")), ToolInput(tag="in_test_output_text", input_type=File(optional=True), prefix="--test_output_text", doc=InputDocumentation(doc="Output test report (Basic text - for display in\nCI)")), ToolInput(tag="in_test_output_markdown", input_type=File(optional=True), prefix="--test_output_markdown", doc=InputDocumentation(doc="Output test report (Markdown style - for humans\n& computers)")), ToolInput(tag="in_test_output_x_unit", input_type=File(optional=True), prefix="--test_output_xunit", doc=InputDocumentation(doc="Output test report (xunit style - for CI")), ToolInput(tag="in_file_path", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Planemo_Test_Reports_V0_1_0().translate("wdl", allow_empty_container=True)

