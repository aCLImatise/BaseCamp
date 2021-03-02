from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Add_Score_Tags_To_Bam_V0_1_0 = CommandToolBuilder(tool="add_score_tags_to_bam", base_command=["add-score-tags-to-bam"], inputs=[ToolInput(tag="in_arg_value_substract", input_type=Boolean(optional=True), prefix="-p", doc=InputDocumentation(doc="[ --phred_offset ] arg (=33)       Value to substract from ASCII code to\nget the PHRED quality.")), ToolInput(tag="in_arg_issue_warning", input_type=Boolean(optional=True), prefix="-b", doc=InputDocumentation(doc="[ --bad_alignment_threshold ] arg (=1000)\nIssue a warning when AS tag is above\nthis value.")), ToolInput(tag="in_output_as_computed", input_type=Boolean(optional=True), prefix="-s", doc=InputDocumentation(doc="[ --skip_unknown ]                 Do not output reads for which no AS tag\ncould be computed, e.g. because the\nreference sequence was unknown.")), ToolInput(tag="in_arg_number_threads", input_type=Boolean(optional=True), prefix="-T", doc=InputDocumentation(doc="[ --threads ] arg (=0)             Number of threads (default: 0 =\nstrictly single-threaded).\n")), ToolInput(tag="in_reference_dot_fast_a", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Add_Score_Tags_To_Bam_V0_1_0().translate("wdl", allow_empty_container=True)

