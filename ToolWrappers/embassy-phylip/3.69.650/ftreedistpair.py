from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Ftreedistpair_V0_1_0 = CommandToolBuilder(tool="ftreedistpair", base_command=["ftreedistpair"], inputs=[ToolInput(tag="in_d_type", input_type=Boolean(optional=True), prefix="-dtype", doc=InputDocumentation(doc="menu       [b] Distance type (Values: s (Symmetric\ndifference); b (Branch score distance))")), ToolInput(tag="in_pairing", input_type=Boolean(optional=True), prefix="-pairing", doc=InputDocumentation(doc="menu       [l] Tree pairing method (Values: c\n(Distances between corresponding pairs each\ntree file); l (Distances between all\npossible pairs in each tree file))")), ToolInput(tag="in_style", input_type=Boolean(optional=True), prefix="-style", doc=InputDocumentation(doc="menu       [v] Distances output option (Values: f\n(Full_matrix); v (Verbose, one pair per\nline); s (Sparse, one pair per line))")), ToolInput(tag="in_no_root", input_type=Boolean(optional=True), prefix="-noroot", doc=InputDocumentation(doc="boolean    [N] Trees to be treated as rooted")), ToolInput(tag="in_out_gr_no", input_type=Boolean(optional=True), prefix="-outgrno", doc=InputDocumentation(doc="integer    [0] Species number to use as outgroup\n(Integer 0 or more)")), ToolInput(tag="in_progress", input_type=Boolean(optional=True), prefix="-progress", doc=InputDocumentation(doc="boolean    [N] Print indications of progress of run"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ftreedistpair_V0_1_0().translate("wdl", allow_empty_container=True)

