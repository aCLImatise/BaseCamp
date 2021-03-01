from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File

Hca_Upload_Status_V0_1_0 = CommandToolBuilder(tool="hca_upload_status", base_command=["hca", "upload", "status"], inputs=[ToolInput(tag="in_env", input_type=String(optional=True), prefix="--env", doc=InputDocumentation(doc="Environment the upload area was created in (default is based on\ncurrently selected upload area)")), ToolInput(tag="in_uuid", input_type=String(optional=True), prefix="--uuid", doc=InputDocumentation(doc="Full UUID of an upload area (default is based on currently\nselected upload area)\n")), ToolInput(tag="in_filename", input_type=File(), position=0, doc=InputDocumentation(doc="File name"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hca_Upload_Status_V0_1_0().translate("wdl", allow_empty_container=True)

