from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, String

Idx_Bx_Sqlite3_Py_V0_1_0 = CommandToolBuilder(tool="idx_bx_sqlite3.py", base_command=["idx_bx_sqlite3.py"], inputs=[ToolInput(tag="in_basic", input_type=File(optional=True), prefix="--basic", doc=InputDocumentation(doc="barcoded Fastq file from reads obtained with\nlongranger basic")), ToolInput(tag="in_idx", input_type=File(optional=True), prefix="--idx", doc=InputDocumentation(doc="output indexed file")), ToolInput(tag="in_gz", input_type=Boolean(optional=True), prefix="--gz", doc=InputDocumentation(doc="fastq is zipped")), ToolInput(tag="in_mode", input_type=String(optional=True), prefix="--mode", doc=InputDocumentation(doc="mode of storage (shelve/sqlite)"))], outputs=[ToolOutput(tag="out_idx", output_type=File(optional=True), selector=InputSelector(input_to_select="in_idx", type_hint=File()), doc=OutputDocumentation(doc="output indexed file"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Idx_Bx_Sqlite3_Py_V0_1_0().translate("wdl", allow_empty_container=True)

