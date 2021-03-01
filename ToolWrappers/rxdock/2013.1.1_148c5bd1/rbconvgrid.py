from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, String

Rbconvgrid_V0_1_0 = CommandToolBuilder(tool="rbconvgrid", base_command=["rbconvgrid"], inputs=[ToolInput(tag="in_inputfile_input_rbtvdwgridsf", input_type=Boolean(optional=True), prefix="-i", doc=InputDocumentation(doc="<InputFile> - input RbtVdwGridSF binary grid filename")), ToolInput(tag="in_outputfile_output_insightii", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="<OutputFile> - output InsightII ascii grid filename")), ToolInput(tag="in_gridnum_grid_number", input_type=Boolean(optional=True), prefix="-n", doc=InputDocumentation(doc="<GridNum> - grid number to convert (default = list grids)")), ToolInput(tag="in_input_file", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_output_file", input_type=String(optional=True), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_grid_num", input_type=String(optional=True), position=2, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_outputfile_output_insightii", output_type=File(optional=True), selector=InputSelector(input_to_select="in_outputfile_output_insightii", type_hint=File()), doc=OutputDocumentation(doc="<OutputFile> - output InsightII ascii grid filename"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rbconvgrid_V0_1_0().translate("wdl", allow_empty_container=True)

