from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int

Bwa_Pemerge_V0_1_0 = CommandToolBuilder(tool="bwa_pemerge", base_command=["bwa", "pemerge"], inputs=[ToolInput(tag="in_output_merged_reads", input_type=Boolean(optional=True), prefix="-m", doc=InputDocumentation(doc="output merged reads only")), ToolInput(tag="in_output_unmerged_reads", input_type=Boolean(optional=True), prefix="-u", doc=InputDocumentation(doc="output unmerged reads only")), ToolInput(tag="in_number_of_threads", input_type=Int(optional=True), prefix="-t", doc=InputDocumentation(doc="number of threads [1]")), ToolInput(tag="in_minimum_end_overlap", input_type=Int(optional=True), prefix="-T", doc=InputDocumentation(doc="minimum end overlap [10]")), ToolInput(tag="in_max_sum_errors", input_type=Int(optional=True), prefix="-Q", doc=InputDocumentation(doc="max sum of errors [70]")), ToolInput(tag="in_mu", input_type=Boolean(optional=True), prefix="-mu", doc=InputDocumentation(doc="")), ToolInput(tag="in_read_one_dot_fq", input_type=Int(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_read_two_dot_fq", input_type=Int(optional=True), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bwa_Pemerge_V0_1_0().translate("wdl", allow_empty_container=True)

