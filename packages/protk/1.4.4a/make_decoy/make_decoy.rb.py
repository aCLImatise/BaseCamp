from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, String, Boolean

Make_Decoy_Rb_V0_1_0 = CommandToolBuilder(tool="make_decoy.rb", base_command=["make_decoy.rb"], inputs=[ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="An explicitly named output file.")), ToolInput(tag="in_db_length", input_type=Int(optional=True), prefix="--db-length", doc=InputDocumentation(doc="Number of sequences to generate [0]")), ToolInput(tag="in_prefix_string", input_type=String(optional=True), prefix="--prefix-string", doc=InputDocumentation(doc="String to prepend to sequence ids [decoy_]")), ToolInput(tag="in_reverse_only", input_type=Boolean(optional=True), prefix="--reverse-only", doc=InputDocumentation(doc="Just reverse sequences. Dont try to randomize. Ignores -L [false]")), ToolInput(tag="in_id_regex", input_type=String(optional=True), prefix="--id-regex", doc=InputDocumentation(doc="Regex for finding IDs. If reverse-only is used then this will be used to find ids and prepend with the decoy string. Default .*?\|(.*?)[ \|] [.*?\|(.*?)[ \|]]")), ToolInput(tag="in_append", input_type=Boolean(optional=True), prefix="--append", doc=InputDocumentation(doc="Append input sequences to the generated database [false]")), ToolInput(tag="in_real_db_dot_fast_a", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="An explicitly named output file."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Make_Decoy_Rb_V0_1_0().translate("wdl", allow_empty_container=True)

