from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean, Int

Subread_Buildindex_V0_1_0 = CommandToolBuilder(tool="subread_buildindex", base_command=["subread-buildindex"], inputs=[ToolInput(tag="in_base_name_created", input_type=String(optional=True), prefix="-o", doc=InputDocumentation(doc="base name of the index to be created")), ToolInput(tag="in_build_full_index", input_type=Boolean(optional=True), prefix="-F", doc=InputDocumentation(doc="build a full index for the reference genome. 16bp subreads\nwill be extracted from every position of the reference\ngenome. Size of the index is typically 3 times the size of\nindex built from using the default setting.")), ToolInput(tag="in_create_one_block", input_type=Boolean(optional=True), prefix="-B", doc=InputDocumentation(doc="create one block of index. The built index will not be split\ninto multiple pieces. This makes the largest amount of\nmemory be requested when running alignments, but it enables\nthe maximum mapping speed to be achieved. This option\noverrides -M when it is provided as well.")), ToolInput(tag="in_size_requested_memoryram", input_type=Int(optional=True), prefix="-M", doc=InputDocumentation(doc="size of requested memory(RAM) in megabytes, 8000 by default.")), ToolInput(tag="in_specify_threshold_removing", input_type=Int(optional=True), prefix="-f", doc=InputDocumentation(doc="specify the threshold for removing uninformative subreads\n(highly repetitive 16mers in the reference). 100 by default.")), ToolInput(tag="in_build_colorspace_index", input_type=Boolean(optional=True), prefix="-c", doc=InputDocumentation(doc="build a color-space index.")), ToolInput(tag="in_output_version_program", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="output version of the program."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Subread_Buildindex_V0_1_0().translate("wdl", allow_empty_container=True)

