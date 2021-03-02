from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Array, String, File, Boolean

Combine_Kreports_Py_V0_1_0 = CommandToolBuilder(tool="combine_kreports.py", base_command=["combine_kreports.py"], inputs=[ToolInput(tag="in_report_files", input_type=Array(t=String(), optional=True), prefix="--report-files", doc=InputDocumentation(doc="Input kraken report files to combine (separate by\nspaces)")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="Output kraken report file with combined information")), ToolInput(tag="in_display_headers", input_type=Boolean(optional=True), prefix="--display-headers", doc=InputDocumentation(doc="Include header lines")), ToolInput(tag="in_no_headers", input_type=Boolean(optional=True), prefix="--no-headers", doc=InputDocumentation(doc="Do not include header lines")), ToolInput(tag="in_sample_names", input_type=Array(t=String(), optional=True), prefix="--sample-names", doc=InputDocumentation(doc="Sample names to use as headers in the new report")), ToolInput(tag="in_only_combined", input_type=Boolean(optional=True), prefix="--only-combined", doc=InputDocumentation(doc="Include only the total combined reads column, not the\nindividual sample cols\n"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="Output kraken report file with combined information"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Combine_Kreports_Py_V0_1_0().translate("wdl", allow_empty_container=True)

