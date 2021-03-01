from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File

Hca_Upload_Report_V0_1_0 = CommandToolBuilder(tool="hca_upload_report", base_command=["hca", "upload", "report"], inputs=[ToolInput(tag="in_env", input_type=String(optional=True), prefix="--env", doc=InputDocumentation(doc="Environment the upload area was created in (default is\nbased on currently selected upload area)")), ToolInput(tag="in_uuid", input_type=String(optional=True), prefix="--uuid", doc=InputDocumentation(doc="Full UUID of an upload area (default is based on\ncurrently selected upload area)")), ToolInput(tag="in_output_file_name", input_type=File(optional=True), prefix="--output_file_name", doc=InputDocumentation(doc="Name of output file (default is upload area name)\n"))], outputs=[ToolOutput(tag="out_output_file_name", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_file_name", type_hint=File()), doc=OutputDocumentation(doc="Name of output file (default is upload area name)\n"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hca_Upload_Report_V0_1_0().translate("wdl", allow_empty_container=True)

