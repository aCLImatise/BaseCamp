from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, String

Fmlrc_Convert_V0_1_0 = CommandToolBuilder(tool="fmlrc_convert", base_command=["fmlrc-convert"], inputs=[ToolInput(tag="in_print_version_number", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="print version number and exit")), ToolInput(tag="in_force_overwrite_false", input_type=Boolean(optional=True), prefix="-f", doc=InputDocumentation(doc="force overwrite of existing file (default: false)")), ToolInput(tag="in_plain_text_bwt", input_type=File(optional=True), prefix="-i", doc=InputDocumentation(doc="the plain text BWT file to be converted into msbwt format (default: stdin)")), ToolInput(tag="in_out_comp_mbswtdotnpy", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fmlrc_Convert_V0_1_0().translate("wdl", allow_empty_container=True)

