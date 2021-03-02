from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Boolean

Run_Musicc_Py_V0_1_0 = CommandToolBuilder(tool="run_musicc.py", base_command=["run_musicc.py"], inputs=[ToolInput(tag="in_out", input_type=File(optional=True), prefix="--out", doc=InputDocumentation(doc="Output destination for corrected abundance (default:\nMUSiCC.tab)")), ToolInput(tag="in_input_format", input_type=String(optional=True), prefix="--input_format", doc=InputDocumentation(doc="Option indicating the format of the input file\n(default: tab)")), ToolInput(tag="in_output_format", input_type=File(optional=True), prefix="--output_format", doc=InputDocumentation(doc="Option indicating the format of the output file\n(default: tab)")), ToolInput(tag="in_normalize", input_type=Boolean(optional=True), prefix="--normalize", doc=InputDocumentation(doc="Apply MUSiCC normalization (default: false)")), ToolInput(tag="in_correct", input_type=String(optional=True), prefix="--correct", doc=InputDocumentation(doc="Correct abundance per-sample using MUSiCC (default:\nfalse)")), ToolInput(tag="in_performance", input_type=Boolean(optional=True), prefix="--performance", doc=InputDocumentation(doc="Calculate model performance on various gene sets (may\nadd to running time) (default: false)")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Increase verbosity of module (default: false)"))], outputs=[ToolOutput(tag="out_out", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out", type_hint=File()), doc=OutputDocumentation(doc="Output destination for corrected abundance (default:\nMUSiCC.tab)")), ToolOutput(tag="out_output_format", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_format", type_hint=File()), doc=OutputDocumentation(doc="Option indicating the format of the output file\n(default: tab)"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Run_Musicc_Py_V0_1_0().translate("wdl", allow_empty_container=True)

