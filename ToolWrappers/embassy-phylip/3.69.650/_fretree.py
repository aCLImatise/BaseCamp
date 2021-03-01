from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

_Fretree_V0_1_0 = CommandToolBuilder(tool="_fretree", base_command=["_fretree"], inputs=[ToolInput(tag="in_initial_tree", input_type=Boolean(optional=True), prefix="-initialtree", doc=InputDocumentation(doc="menu       [Arbitary] Initial tree (Values: a\n(Arbitary); u (User); s (Specify))")), ToolInput(tag="in_format", input_type=Boolean(optional=True), prefix="-format", doc=InputDocumentation(doc="menu       [p] Format to write trees (Values: p\n(PHYLIP); n (NEXUS); x (XML))")), ToolInput(tag="in_screen_width", input_type=Boolean(optional=True), prefix="-screenwidth", doc=InputDocumentation(doc="integer    [80] Width of terminal screen in characters\n(Any integer value)")), ToolInput(tag="in_v_screen_width", input_type=Boolean(optional=True), prefix="-vscreenwidth", doc=InputDocumentation(doc="integer    [80] Width of plotting area in characters\n(Any integer value)")), ToolInput(tag="in_screen_lines", input_type=Boolean(optional=True), prefix="-screenlines", doc=InputDocumentation(doc="integer    [24] Number of lines on screen (Any integer\nvalue)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    _Fretree_V0_1_0().translate("wdl", allow_empty_container=True)

