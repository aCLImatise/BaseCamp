from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, String

H5Clear_V0_1_0 = CommandToolBuilder(tool="h5clear", base_command=["h5clear"], inputs=[ToolInput(tag="in_status", input_type=Boolean(optional=True), prefix="--status", doc=InputDocumentation(doc="Clear the status_flags field in the file's superblock")), ToolInput(tag="in_image", input_type=Boolean(optional=True), prefix="--image", doc=InputDocumentation(doc="Remove the metadata cache image from the file")), ToolInput(tag="in_filesize", input_type=Boolean(optional=True), prefix="--filesize", doc=InputDocumentation(doc="Print the file's EOA and EOF")), ToolInput(tag="in_increment", input_type=File(optional=True), prefix="--increment", doc=InputDocumentation(doc="Set the file's EOA to the maximum of (EOA, EOF) + C for the file <file_name>\nC is >= 0; C is optional and will default to 1M when not set")), ToolInput(tag="in_options", input_type=String(), position=0, doc=InputDocumentation(doc="-h, --help                Print a usage message and exit"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    H5Clear_V0_1_0().translate("wdl", allow_empty_container=True)

