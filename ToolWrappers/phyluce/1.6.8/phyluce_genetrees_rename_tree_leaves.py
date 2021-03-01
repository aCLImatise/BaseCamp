from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, String

Phyluce_Genetrees_Rename_Tree_Leaves_V0_1_0 = CommandToolBuilder(tool="phyluce_genetrees_rename_tree_leaves", base_command=["phyluce_genetrees_rename_tree_leaves"], inputs=[ToolInput(tag="in_input", input_type=File(optional=True), prefix="--input", doc=InputDocumentation(doc="The input tree file")), ToolInput(tag="in_config", input_type=File(optional=True), prefix="--config", doc=InputDocumentation(doc="A python config file mapping one name to another")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="The output tree file")), ToolInput(tag="in_section", input_type=File(optional=True), prefix="--section", doc=InputDocumentation(doc="The section of the conf file to use")), ToolInput(tag="in_order", input_type=Boolean(optional=True), prefix="--order", doc=InputDocumentation(doc="{left:right,right:left}\nMap the names as entered or in reverse")), ToolInput(tag="in_input_format", input_type=String(optional=True), prefix="--input-format", doc=InputDocumentation(doc="The tree file format")), ToolInput(tag="in_output_format", input_type=String(optional=True), prefix="--output-format", doc=InputDocumentation(doc="The tree file format")), ToolInput(tag="in_re_root", input_type=String(optional=True), prefix="--reroot", doc=InputDocumentation(doc="The resulting name to root the tree on")), ToolInput(tag="in_do_not_preserve_spaces", input_type=String(optional=True), prefix="--do-not-preserve-spaces", doc=InputDocumentation(doc="Do not retain spaces in output names\n"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="The output tree file"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Phyluce_Genetrees_Rename_Tree_Leaves_V0_1_0().translate("wdl", allow_empty_container=True)

