from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, String, Boolean

Baselinefilter_V0_1_0 = CommandToolBuilder(tool="BaselineFilter", base_command=["BaselineFilter"], inputs=[ToolInput(tag="in_in", input_type=File(optional=True), prefix="-in", doc=InputDocumentation(doc="*                Input raw data file  (valid formats: 'mzML')")), ToolInput(tag="in_out", input_type=File(optional=True), prefix="-out", doc=InputDocumentation(doc="*               Output raw data file  (valid formats: 'mzML')")), ToolInput(tag="in_struc_elem_length", input_type=Int(optional=True), prefix="-struc_elem_length", doc=InputDocumentation(doc="Length of the structuring element (should be wider than maximal peak width - see documentation). (default: '3.0')")), ToolInput(tag="in_struc_elem_unit", input_type=String(optional=True), prefix="-struc_elem_unit", doc=InputDocumentation(doc="Unit of 'struc_elem_length' parameter. (default: 'Thomson' valid: 'Thomson', 'DataPoints')")), ToolInput(tag="in_method", input_type=String(optional=True), prefix="-method", doc=InputDocumentation(doc="The name of the morphological filter to be applied. If you are unsure, use the default. (default: 'tophat' valid: 'identity', 'erosion', 'dilation', 'opening', 'closing', 'gradient', 'tophat', 'bothat', 'erosion_simple', 'dilation_simple')")), ToolInput(tag="in_ini", input_type=File(optional=True), prefix="-ini", doc=InputDocumentation(doc="Use the given TOPP INI file")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="-threads", doc=InputDocumentation(doc="Sets the number of threads allowed to be used by the TOPP tool (default: '1')")), ToolInput(tag="in_write_ini", input_type=File(optional=True), prefix="-write_ini", doc=InputDocumentation(doc="Writes the default configuration file")), ToolInput(tag="in_helphelp", input_type=Boolean(optional=True), prefix="--helphelp", doc=InputDocumentation(doc="Shows all options (including advanced)"))], outputs=[ToolOutput(tag="out_out", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out", type_hint=File()), doc=OutputDocumentation(doc="*               Output raw data file  (valid formats: 'mzML')"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Baselinefilter_V0_1_0().translate("wdl", allow_empty_container=True)

