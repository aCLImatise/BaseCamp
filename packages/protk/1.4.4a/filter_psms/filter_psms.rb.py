from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, String

Filter_Psms_Rb_V0_1_0 = CommandToolBuilder(tool="filter_psms.rb", base_command=["filter_psms.rb"], inputs=[ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="An explicitly named output file.")), ToolInput(tag="in_debug", input_type=Boolean(optional=True), prefix="--debug", doc=InputDocumentation(doc="Run in debug mode [false]")), ToolInput(tag="in_attribute", input_type=String(optional=True), prefix="--attribute", doc=InputDocumentation(doc="Match expression against a specific search_hit attribute [protein]")), ToolInput(tag="in_check_alternatives", input_type=Boolean(optional=True), prefix="--check-alternatives", doc=InputDocumentation(doc="Also match expression against to alternative_proteins [false]")), ToolInput(tag="in_reject", input_type=Boolean(optional=True), prefix="--reject", doc=InputDocumentation(doc="Keep mismatches instead of matches [false]")), ToolInput(tag="in_expression", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_file_dot_pep_xml", input_type=File(), position=1, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="An explicitly named output file."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Filter_Psms_Rb_V0_1_0().translate("wdl", allow_empty_container=True)

