from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, Int

Protxml_To_Table_Rb_V0_1_0 = CommandToolBuilder(tool="protxml_to_table.rb", base_command=["protxml_to_table.rb"], inputs=[ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="An explicitly named output file.")), ToolInput(tag="in_groups", input_type=Boolean(optional=True), prefix="--groups", doc=InputDocumentation(doc="Print output by groups rather than for each protein [false]")), ToolInput(tag="in_invert_probabilities", input_type=Boolean(optional=True), prefix="--invert-probabilities", doc=InputDocumentation(doc="Output 1-p instead of p for all probability values [false]")), ToolInput(tag="in_file_one_dot_prot_xml", input_type=Int(), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="An explicitly named output file."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Protxml_To_Table_Rb_V0_1_0().translate("wdl", allow_empty_container=True)

