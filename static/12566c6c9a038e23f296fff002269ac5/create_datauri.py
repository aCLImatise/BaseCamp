from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Create_Datauri_V0_1_0 = CommandToolBuilder(tool="create_datauri", base_command=["create_datauri"], inputs=[ToolInput(tag="in_file_type", input_type=File(optional=True), prefix="--filetype", doc=InputDocumentation(doc="type of file to be converted to data uri")), ToolInput(tag="in_region", input_type=String(optional=True), prefix="--region", doc=InputDocumentation(doc="genomic region to be converted in the form chr:start-\nstop\n")), ToolInput(tag="in_filename", input_type=File(), position=0, doc=InputDocumentation(doc="name of file to be converted to data uri"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Create_Datauri_V0_1_0().translate("wdl", allow_empty_container=True)

