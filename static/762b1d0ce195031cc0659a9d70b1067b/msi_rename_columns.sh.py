from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Directory

Msi_Rename_Columns_Sh_V0_1_0 = CommandToolBuilder(tool="msi_rename_columns.sh", base_command=["msi_rename_columns.sh"], inputs=[ToolInput(tag="in__metadata_file", input_type=File(optional=True), prefix="-i", doc=InputDocumentation(doc="- metadata file*")), ToolInput(tag="in_e", input_type=String(optional=True), prefix="-e", doc=InputDocumentation(doc="- should exist in the metadata_file [default: barcode_id]")), ToolInput(tag="in_n", input_type=String(optional=True), prefix="-N", doc=InputDocumentation(doc="- should exist in the metadata_file [default: sample_id]")), ToolInput(tag="in__output_file", input_type=Directory(optional=True), prefix="-o", doc=InputDocumentation(doc="-  output file"))], outputs=[ToolOutput(tag="out__output_file", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in__output_file", type_hint=File()), doc=OutputDocumentation(doc="-  output file"))], container="quay.io/biocontainers/msi:0.3.5--1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Msi_Rename_Columns_Sh_V0_1_0().translate("wdl")

