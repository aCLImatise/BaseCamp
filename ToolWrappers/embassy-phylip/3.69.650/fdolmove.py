from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Fdolmove_V0_1_0 = CommandToolBuilder(tool="fdolmove", base_command=["fdolmove"], inputs=[ToolInput(tag="in_weights", input_type=Boolean(optional=True), prefix="-weights", doc=InputDocumentation(doc="properties Weights file")), ToolInput(tag="in_anc_file", input_type=Boolean(optional=True), prefix="-ancfile", doc=InputDocumentation(doc="properties Ancestral states file")), ToolInput(tag="in_factor_file", input_type=Boolean(optional=True), prefix="-factorfile", doc=InputDocumentation(doc="properties Factors file")), ToolInput(tag="in_method", input_type=Boolean(optional=True), prefix="-method", doc=InputDocumentation(doc="menu       [d] Parsimony method (Values: d (Dollo); p\n(Polymorphism))")), ToolInput(tag="in_do_threshold", input_type=Boolean(optional=True), prefix="-dothreshold", doc=InputDocumentation(doc="toggle     [N] Use threshold parsimony")), ToolInput(tag="in_initial_tree", input_type=Boolean(optional=True), prefix="-initialtree", doc=InputDocumentation(doc="menu       [Arbitary] Initial tree (Values: a\n(Arbitary); u (User); s (Specify))")), ToolInput(tag="in_screen_width", input_type=Boolean(optional=True), prefix="-screenwidth", doc=InputDocumentation(doc="integer    [80] Width of terminal screen in characters\n(Any integer value)")), ToolInput(tag="in_screen_lines", input_type=Boolean(optional=True), prefix="-screenlines", doc=InputDocumentation(doc="integer    [24] Number of lines on screen (Any integer\nvalue)")), ToolInput(tag="in_out_tree_file", input_type=File(optional=True), prefix="-outtreefile", doc=InputDocumentation(doc="outfile    [*.fdolmove] Phylip tree output file\n(optional)"))], outputs=[ToolOutput(tag="out_out_tree_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out_tree_file", type_hint=File()), doc=OutputDocumentation(doc="outfile    [*.fdolmove] Phylip tree output file\n(optional)"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fdolmove_V0_1_0().translate("wdl", allow_empty_container=True)

