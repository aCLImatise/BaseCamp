from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Translate_Gard_V0_1_0 = CommandToolBuilder(tool="translate_gard", base_command=["translate-gard"], inputs=[ToolInput(tag="in_input_filename_cdnexgardcsv", input_type=Boolean(optional=True), prefix="-i", doc=InputDocumentation(doc="input filename (like CD2.nex.GARD.csv)  [required]")), ToolInput(tag="in_json_filename_cdnexoutjson", input_type=File(optional=True), prefix="-j", doc=InputDocumentation(doc="json filename (like CD2.nex.out.json    [required]")), ToolInput(tag="in_output_filename_", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="output filename                         [required]"))], outputs=[ToolOutput(tag="out_json_filename_cdnexoutjson", output_type=File(optional=True), selector=InputSelector(input_to_select="in_json_filename_cdnexoutjson", type_hint=File()), doc=OutputDocumentation(doc="json filename (like CD2.nex.out.json    [required]")), ToolOutput(tag="out_output_filename_", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_filename_", type_hint=File()), doc=OutputDocumentation(doc="output filename                         [required]"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Translate_Gard_V0_1_0().translate("wdl", allow_empty_container=True)

