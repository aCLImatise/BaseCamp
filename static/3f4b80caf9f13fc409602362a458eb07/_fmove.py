from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

_Fmove_V0_1_0 = CommandToolBuilder(tool="_fmove", base_command=["_fmove"], inputs=[ToolInput(tag="in_weights", input_type=Boolean(optional=True), prefix="-weights", doc=InputDocumentation(doc="properties Weights file")), ToolInput(tag="in_anc_file", input_type=Boolean(optional=True), prefix="-ancfile", doc=InputDocumentation(doc="properties Ancestral states file")), ToolInput(tag="in_factor_file", input_type=Boolean(optional=True), prefix="-factorfile", doc=InputDocumentation(doc="properties Factors file")), ToolInput(tag="in_method", input_type=Boolean(optional=True), prefix="-method", doc=InputDocumentation(doc="menu       [Wagner] Choose the method to use (Values: w\n(Wagner); c (Camin-Sokal); m (Mixed))")), ToolInput(tag="in_out_gr_no", input_type=Boolean(optional=True), prefix="-outgrno", doc=InputDocumentation(doc="integer    [0] Species number to use as outgroup\n(Integer 0 or more)")), ToolInput(tag="in_threshold", input_type=Boolean(optional=True), prefix="-threshold", doc=InputDocumentation(doc="float      [$(infile.discretesize)] Threshold value\n(Number 0.000 or more)")), ToolInput(tag="in_initial_tree", input_type=Boolean(optional=True), prefix="-initialtree", doc=InputDocumentation(doc="menu       [Arbitary] Initial tree (Values: a\n(Arbitary); u (User); s (Specify))")), ToolInput(tag="in_screen_width", input_type=Boolean(optional=True), prefix="-screenwidth", doc=InputDocumentation(doc="integer    [80] Width of terminal screen in characters\n(Any integer value)")), ToolInput(tag="in_screen_lines", input_type=Boolean(optional=True), prefix="-screenlines", doc=InputDocumentation(doc="integer    [24] Number of lines on screen (Any integer\nvalue)")), ToolInput(tag="in_out_tree_file", input_type=File(optional=True), prefix="-outtreefile", doc=InputDocumentation(doc="outfile    [*.fmove] Phylip tree output file (optional)"))], outputs=[ToolOutput(tag="out_out_tree_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out_tree_file", type_hint=File()), doc=OutputDocumentation(doc="outfile    [*.fmove] Phylip tree output file (optional)"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    _Fmove_V0_1_0().translate("wdl", allow_empty_container=True)

