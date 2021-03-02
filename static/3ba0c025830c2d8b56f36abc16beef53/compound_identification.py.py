from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Compound_Identification_Py_V0_1_0 = CommandToolBuilder(tool="compound_identification.py", base_command=["compound_identification.py"], inputs=[ToolInput(tag="in_an_no", input_type=File(optional=True), prefix="--anno", doc=InputDocumentation(doc="Out path for first file")), ToolInput(tag="in_uniqid", input_type=File(optional=True), prefix="--uniqID", doc=InputDocumentation(doc="Name of thecolumn in file that contains the uniqID")), ToolInput(tag="in_mz_id", input_type=File(optional=True), prefix="--mzID", doc=InputDocumentation(doc="Name of the column in file that contains MZ")), ToolInput(tag="in_rt_id", input_type=File(optional=True), prefix="--rtID", doc=InputDocumentation(doc="Name of the column in file that contains RT")), ToolInput(tag="in_library", input_type=String(optional=True), prefix="--library", doc=InputDocumentation(doc="Library to use forthe matching.")), ToolInput(tag="in_lib_uniqid", input_type=File(optional=True), prefix="--libuniqID", doc=InputDocumentation(doc="Name of thecolumn in the library file that contains\nthe uniqID")), ToolInput(tag="in_libm_zid", input_type=File(optional=True), prefix="--libmzID", doc=InputDocumentation(doc="Name of the column in the library file that contains\nMZ")), ToolInput(tag="in_libr_tid", input_type=File(optional=True), prefix="--librtID", doc=InputDocumentation(doc="Name of the column in the library file that contains\nRT")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="Output path for identifiedcompounds.\n"))], outputs=[ToolOutput(tag="out_an_no", output_type=File(optional=True), selector=InputSelector(input_to_select="in_an_no", type_hint=File()), doc=OutputDocumentation(doc="Out path for first file")), ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="Output path for identifiedcompounds.\n"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Compound_Identification_Py_V0_1_0().translate("wdl", allow_empty_container=True)

