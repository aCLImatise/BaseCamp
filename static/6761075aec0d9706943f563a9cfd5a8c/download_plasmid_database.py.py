from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory

Download_Plasmid_Database_Py_V0_1_0 = CommandToolBuilder(tool="download_plasmid_database.py", base_command=["download_plasmid_database.py"], inputs=[ToolInput(tag="in_output", input_type=Directory(optional=True), prefix="--output", doc=InputDocumentation(doc="REQUIRED. Output directory to extract plasmid database\n"))], outputs=[ToolOutput(tag="out_output", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="REQUIRED. Output directory to extract plasmid database\n"))], container="quay.io/biocontainers/plasmidid:1.6.4--1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Download_Plasmid_Database_Py_V0_1_0().translate("wdl")

