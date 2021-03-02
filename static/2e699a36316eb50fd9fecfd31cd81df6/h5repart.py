from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int, String

H5Repart_V0_1_0 = CommandToolBuilder(tool="h5repart", base_command=["h5repart"], inputs=[ToolInput(tag="in_produce_verbose_output", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="Produce verbose output")), ToolInput(tag="in_print_version_number", input_type=Boolean(optional=True), prefix="-V", doc=InputDocumentation(doc="Print a version number and exit")), ToolInput(tag="in_io_block_size", input_type=Int(optional=True), prefix="-b", doc=InputDocumentation(doc="The I/O block size, defaults to 1kB")), ToolInput(tag="in_destination_member_size", input_type=Int(optional=True), prefix="-m", doc=InputDocumentation(doc="The destination member size or 1GB")), ToolInput(tag="in_family_to_sec_two", input_type=Boolean(optional=True), prefix="-family_to_sec2", doc=InputDocumentation(doc="Change file driver from family to sec2")), ToolInput(tag="in_src", input_type=String(), position=0, doc=InputDocumentation(doc="The name of the source file")), ToolInput(tag="in_dst", input_type=String(), position=1, doc=InputDocumentation(doc="The name of the destination files"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    H5Repart_V0_1_0().translate("wdl", allow_empty_container=True)

