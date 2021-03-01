from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, String, Int

Gsnd_V0_1_0 = CommandToolBuilder(tool="gsnd", base_command=["gsnd"], inputs=[ToolInput(tag="in_d_no_pause", input_type=Boolean(optional=True), prefix="-dNOPAUSE", doc=InputDocumentation(doc="no pause after page   | -q       `quiet', fewer messages")), ToolInput(tag="in_widthxheight_page_size", input_type=Boolean(optional=True), prefix="-g", doc=InputDocumentation(doc="<width>x<height>  page size in pixels   | -r<res>  pixels/inch resolution")), ToolInput(tag="in_s_device", input_type=File(optional=True), prefix="-sDEVICE", doc=InputDocumentation(doc="select device         | -dBATCH  exit after last file")), ToolInput(tag="in_soutputfile", input_type=File(optional=True), prefix="-sOutputFile", doc=InputDocumentation(doc="select output file: - for stdout, |command for pipe,\nembed %d or %ld for page #")), ToolInput(tag="in_gs", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_switches", input_type=String(optional=True), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_file_two_do_tps", input_type=Int(optional=True), position=2, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_soutputfile", output_type=File(optional=True), selector=InputSelector(input_to_select="in_soutputfile", type_hint=File()), doc=OutputDocumentation(doc="select output file: - for stdout, |command for pipe,\nembed %d or %ld for page #"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gsnd_V0_1_0().translate("wdl", allow_empty_container=True)

