from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Array, String, File, Boolean

Hicinfo_V0_1_0 = CommandToolBuilder(tool="hicInfo", base_command=["hicInfo"], inputs=[ToolInput(tag="in_matrices", input_type=Array(t=String(), optional=True), prefix="--matrices", doc=InputDocumentation(doc="The matrix (or multiple matrices) to get information\nabout. HiCExplorer supports the following file\nformats: h5 (native HiCExplorer format) and cool.")), ToolInput(tag="in_out_filename", input_type=File(optional=True), prefix="--outFileName", doc=InputDocumentation(doc="File name to save information of the matrix instead of\nwriting it to the bash.")), ToolInput(tag="in_no_metadata", input_type=Boolean(optional=True), prefix="--no_metadata", doc=InputDocumentation(doc="Do not use meta data from cooler file to display\ninformation. This method is slower and was the default\nuntil version 2.2 of HiCExplorer. H5 files always use\nthis parameter."))], outputs=[ToolOutput(tag="out_out_filename", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out_filename", type_hint=File()), doc=OutputDocumentation(doc="File name to save information of the matrix instead of\nwriting it to the bash."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hicinfo_V0_1_0().translate("wdl", allow_empty_container=True)

