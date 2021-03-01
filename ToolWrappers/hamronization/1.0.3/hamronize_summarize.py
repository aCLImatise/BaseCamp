from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File

Hamronize_Summarize_V0_1_0 = CommandToolBuilder(tool="hamronize_summarize", base_command=["hamronize", "summarize"], inputs=[ToolInput(tag="in_summary_type", input_type=String(optional=True), prefix="--summary_type", doc=InputDocumentation(doc="Which summary report format to generate")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="Output file path for summary\n")), ToolInput(tag="in_ham_ron_ized_reports", input_type=String(), position=0, doc=InputDocumentation(doc="list of hAMRonized reports"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="Output file path for summary\n"))], container="quay.io/biocontainers/hamronization:1.0.3--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hamronize_Summarize_V0_1_0().translate("wdl")

