from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, String

Readstats_Py_V0_1_0 = CommandToolBuilder(tool="readstats.py", base_command=["readstats.py"], inputs=[ToolInput(tag="in_info", input_type=Boolean(optional=True), prefix="--info", doc=InputDocumentation(doc="print citation information")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="output file for statistics; defaults to stdout.\n(default: <_io.TextIOWrapper name='<stdout>' mode='w'\nencoding='utf-8'>)")), ToolInput(tag="in_csv", input_type=Boolean(optional=True), prefix="--csv", doc=InputDocumentation(doc="Use the CSV format for the statistics, including\ncolumn headers. (default: False)")), ToolInput(tag="in_filenames", input_type=String(), position=0, doc=InputDocumentation(doc="optional arguments:"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="output file for statistics; defaults to stdout.\n(default: <_io.TextIOWrapper name='<stdout>' mode='w'\nencoding='utf-8'>)"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Readstats_Py_V0_1_0().translate("wdl", allow_empty_container=True)

