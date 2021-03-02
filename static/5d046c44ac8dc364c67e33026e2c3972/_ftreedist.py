from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

_Ftreedist_V0_1_0 = CommandToolBuilder(tool="_ftreedist", base_command=["_ftreedist"], inputs=[ToolInput(tag="in_d_type", input_type=Boolean(optional=True), prefix="-dtype", doc=InputDocumentation(doc="menu       [b] Distance type (Values: s (Symmetric\ndifference); b (Branch score distance))")), ToolInput(tag="in_pairing", input_type=Boolean(optional=True), prefix="-pairing", doc=InputDocumentation(doc="menu       [a] Tree pairing method (Values: a\n(Distances between adjacent pairs in tree\nfile); p (Distances between all possible\npairs in tree file))")), ToolInput(tag="in_style", input_type=Boolean(optional=True), prefix="-style", doc=InputDocumentation(doc="menu       [v] Distances output option (Values: f (Full\nmatrix); v (Verbose, one pair per line); s\n(Sparse, one pair per line))")), ToolInput(tag="in_no_root", input_type=Boolean(optional=True), prefix="-noroot", doc=InputDocumentation(doc="boolean    [N] Trees to be treated as rooted")), ToolInput(tag="in_out_gr_no", input_type=Boolean(optional=True), prefix="-outgrno", doc=InputDocumentation(doc="integer    [0] Species number to use as outgroup\n(Integer 0 or more)")), ToolInput(tag="in_file", input_type=File(), position=0, doc=InputDocumentation(doc="Additional (Optional) qualifiers:"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    _Ftreedist_V0_1_0().translate("wdl", allow_empty_container=True)

