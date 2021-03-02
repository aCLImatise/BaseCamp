from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int, String

Spades_Bwa_Pemerge_V0_1_0 = CommandToolBuilder(tool="spades_bwa_pemerge", base_command=["spades-bwa", "pemerge"], inputs=[ToolInput(tag="in_output_merged_reads", input_type=Boolean(optional=True), prefix="-m", doc=InputDocumentation(doc="output merged reads only")), ToolInput(tag="in_output_unmerged_reads", input_type=Boolean(optional=True), prefix="-u", doc=InputDocumentation(doc="output unmerged reads only")), ToolInput(tag="in_number_of_threads", input_type=Int(optional=True), prefix="-t", doc=InputDocumentation(doc="number of threads [1]")), ToolInput(tag="in_minimum_end_overlap", input_type=Int(optional=True), prefix="-T", doc=InputDocumentation(doc="minimum end overlap [10]")), ToolInput(tag="in_max_sum_errors", input_type=Int(optional=True), prefix="-Q", doc=InputDocumentation(doc="max sum of errors [70]")), ToolInput(tag="in_mu", input_type=Boolean(optional=True), prefix="-mu", doc=InputDocumentation(doc="")), ToolInput(tag="in_bwa", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_p_emerge", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_read_one_dot_fq", input_type=Int(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_read_two_dot_fq", input_type=Int(optional=True), position=3, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/spades:3.15.0--h633aebb_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Spades_Bwa_Pemerge_V0_1_0().translate("wdl")

