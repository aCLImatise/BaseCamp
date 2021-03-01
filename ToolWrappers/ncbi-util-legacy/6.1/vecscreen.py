from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Vecscreen_V0_1_0 = CommandToolBuilder(tool="vecscreen", base_command=["vecscreen"], inputs=[ToolInput(tag="in_query_file_default", input_type=Boolean(optional=True), prefix="-i", doc=InputDocumentation(doc="Query File [File In]\ndefault = stdin")), ToolInput(tag="in_vecscreen_report_output", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="VecScreen report Output File [File Out]\ndefault = stdout")), ToolInput(tag="in_database_default_univec", input_type=Boolean(optional=True), prefix="-d", doc=InputDocumentation(doc="Database [String]\ndefault = UniVec")), ToolInput(tag="in_output_format_html", input_type=Boolean(optional=True), prefix="-f", doc=InputDocumentation(doc="Output format:\n0 = HTML format, with alignments\n1 = HTML format, no alignments\n2 = Text list, with alignments\n3 = Text list, no alignments\n[Integer]\ndefault = 0\n"))], outputs=[ToolOutput(tag="out_vecscreen_report_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_vecscreen_report_output", type_hint=File()), doc=OutputDocumentation(doc="VecScreen report Output File [File Out]\ndefault = stdout"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Vecscreen_V0_1_0().translate("wdl", allow_empty_container=True)

