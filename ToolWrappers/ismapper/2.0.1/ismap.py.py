from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Array, String, Directory, File

Ismap_Py_V0_1_0 = CommandToolBuilder(tool="ismap.py", base_command=["ismap.py"], inputs=[ToolInput(tag="in_reads", input_type=Array(t=String(), optional=True), prefix="--reads", doc=InputDocumentation(doc="Paired end reads for analysing (can be gzipped)")), ToolInput(tag="in_queries", input_type=Array(t=String(), optional=True), prefix="--queries", doc=InputDocumentation(doc="Multifasta file for query gene(s) (eg: insertion\nsequence) that will be mapped to.")), ToolInput(tag="in_reference", input_type=Array(t=String(), optional=True), prefix="--reference", doc=InputDocumentation(doc="Reference genome for typing against in genbank format")), ToolInput(tag="in_output_dir", input_type=Directory(optional=True), prefix="--output_dir", doc=InputDocumentation(doc="Location for all output files (default is current\ndirectory).")), ToolInput(tag="in_log", input_type=File(optional=True), prefix="--log", doc=InputDocumentation(doc="Prefix for log file. If not supplied, prefix will be\ncurrent date and time.")), ToolInput(tag="in_help_all", input_type=String(optional=True), prefix="--help_all", doc=InputDocumentation(doc="Display extended help"))], outputs=[ToolOutput(tag="out_output_dir", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_output_dir", type_hint=File()), doc=OutputDocumentation(doc="Location for all output files (default is current\ndirectory)."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ismap_Py_V0_1_0().translate("wdl", allow_empty_container=True)

