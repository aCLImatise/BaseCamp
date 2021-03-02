from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, Boolean, String

Pbstrain_V0_1_0 = CommandToolBuilder(tool="pbsTrain", base_command=["pbsTrain"], inputs=[ToolInput(tag="in_suff_stats", input_type=File(optional=True), prefix="--suff-stats", doc=InputDocumentation(doc="Output is a code file that can be used with")), ToolInput(tag="in_nbytes", input_type=Int(optional=True), prefix="--nbytes", doc=InputDocumentation(doc="Number of bytes per encoded probabilistic base (default 1).\nThe size of the code will be 256^b - 1 (one letter in the code\nis reserved for gaps).  Values as large as 4 are allowed for\nb, but in the current implementation, performance\nconsiderations effectively limit it to 2 or 3.")), ToolInput(tag="in_nrows", input_type=Int(optional=True), prefix="--nrows", doc=InputDocumentation(doc="Number of 'rows' per dimension in the simplex grid.  Default\nis maximum possible for code size.")), ToolInput(tag="in_no_greedy", input_type=Boolean(optional=True), prefix="--no-greedy", doc=InputDocumentation(doc="Skip greedy optimization -- just assign a single\nrepresentative point to each region of the probability\nsimplex, equal to the (weighted) mean of all vectors from the\ntraining data that fall in that region.")), ToolInput(tag="in_no_train", input_type=File(optional=True), prefix="--no-train", doc=InputDocumentation(doc="Ignore the data entirely; just use the centroid of each\nsimplex partition.  The dimension of the simplex must be given\n(<dim>) but no data file is required.")), ToolInput(tag="in_log", input_type=File(optional=True), prefix="--log", doc=InputDocumentation(doc="write log of optimization procedure to specified file.")), ToolInput(tag="in_dimension_dot", input_type=String(), position=0, doc=InputDocumentation(doc="By default, n is given the largest possible value such")), ToolInput(tag="in_size_dot", input_type=Int(), position=0, doc=InputDocumentation(doc="EXAMPLES:"))], outputs=[ToolOutput(tag="out_suff_stats", output_type=File(optional=True), selector=InputSelector(input_to_select="in_suff_stats", type_hint=File()), doc=OutputDocumentation(doc="Output is a code file that can be used with"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pbstrain_V0_1_0().translate("wdl", allow_empty_container=True)

