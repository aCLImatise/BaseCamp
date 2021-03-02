from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, Float, Int

Mzid_To_Protxml_Rb_V0_1_0 = CommandToolBuilder(tool="mzid_to_protxml.rb", base_command=["mzid_to_protxml.rb"], inputs=[ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="An explicitly named output file.")), ToolInput(tag="in_debug", input_type=Boolean(optional=True), prefix="--debug", doc=InputDocumentation(doc="Run in debug mode [false]")), ToolInput(tag="in_min_prob", input_type=Float(optional=True), prefix="--minprob", doc=InputDocumentation(doc="Minimum probability for protein to be included in the output [0.05]")), ToolInput(tag="in_file_one_dot_mz_id", input_type=Int(), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="An explicitly named output file."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mzid_To_Protxml_Rb_V0_1_0().translate("wdl", allow_empty_container=True)

