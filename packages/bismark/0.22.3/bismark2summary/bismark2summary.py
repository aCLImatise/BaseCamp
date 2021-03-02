from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Bismark2Summary_V0_1_0 = CommandToolBuilder(tool="bismark2summary", base_command=["bismark2summary"], inputs=[ToolInput(tag="in_basename", input_type=File(optional=True), prefix="--basename", doc=InputDocumentation(doc="Basename of the output file (optional). Generate a text file with all relevant extracted values\n('basename.txt') as well as an HTML report ('basename.html'). If not specified explicitly, the\nthe basename is 'bismark_summary_report'.")), ToolInput(tag="in_title", input_type=String(optional=True), prefix="--title", doc=InputDocumentation(doc="Optional HTML report title; use --title 'speech marks for text with spaces'. Default:\n'Bismark Summary Report'."))], outputs=[ToolOutput(tag="out_basename", output_type=File(optional=True), selector=InputSelector(input_to_select="in_basename", type_hint=File()), doc=OutputDocumentation(doc="Basename of the output file (optional). Generate a text file with all relevant extracted values\n('basename.txt') as well as an HTML report ('basename.html'). If not specified explicitly, the\nthe basename is 'bismark_summary_report'."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bismark2Summary_V0_1_0().translate("wdl", allow_empty_container=True)

