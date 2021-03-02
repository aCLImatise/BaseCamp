from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Emma_V0_1_0 = CommandToolBuilder(tool="emma", base_command=["emma"], inputs=[ToolInput(tag="in_only_d_end", input_type=Boolean(optional=True), prefix="-onlydend", doc=InputDocumentation(doc="toggle     [N] Only produce dendrogram file")), ToolInput(tag="in_gap_open", input_type=Boolean(optional=True), prefix="-gapopen", doc=InputDocumentation(doc="float      [10.0] The penalty for opening a gap in the\nalignment. Increasing the gap opening\npenalty will make gaps less frequent.\n(Positive floating point number)")), ToolInput(tag="in_gap_extend", input_type=Boolean(optional=True), prefix="-gapextend", doc=InputDocumentation(doc="float      [5.0] The penalty for extending a gap by 1\nresidue. Increasing the gap extension\npenalty will make gaps shorter. Terminal\ngaps are not penalised. (Positive floating\npoint number)")), ToolInput(tag="in_gap_dist", input_type=Boolean(optional=True), prefix="-gapdist", doc=InputDocumentation(doc="integer    [8] Gap separation distance: tries to\ndecrease the chances of gaps being too close\nto each other. Gaps that are less than this\ndistance apart are penalised more than\nother gaps. This does not prevent close\ngaps; it makes them less frequent, promoting\na block-like appearance of the alignment.\n(Positive integer)")), ToolInput(tag="in_max_div", input_type=Boolean(optional=True), prefix="-maxdiv", doc=InputDocumentation(doc="integer    [30] This switch, delays the alignment of\nthe most distantly related sequences until\nafter the most closely related sequences\nhave been aligned. The setting shows the\npercent identity level required to delay the\naddition of a sequence; sequences that are\nless identical than this level to any other\nsequences will be aligned later. (Integer\nfrom 0 to 100)")), ToolInput(tag="in_similarity", input_type=String(), position=0, doc=InputDocumentation(doc="scores: suppresses percentage score"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Emma_V0_1_0().translate("wdl", allow_empty_container=True)

