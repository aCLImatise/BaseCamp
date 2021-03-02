from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Float, Boolean, String

Sample_Reads_V0_1_0 = CommandToolBuilder(tool="sample_reads", base_command=["sample_reads"], inputs=[ToolInput(tag="in_depth", input_type=Int(optional=True), prefix="--depth", doc=InputDocumentation(doc="(=30)                  sequencing depth of the sample")), ToolInput(tag="in_error_rate", input_type=Float(optional=True), prefix="--error_rate", doc=InputDocumentation(doc="(=0.01)           error rate")), ToolInput(tag="in_read_length", input_type=Int(optional=True), prefix="--read_length", doc=InputDocumentation(doc="(=100)           read length")), ToolInput(tag="in_paired", input_type=Boolean(optional=True), prefix="--paired", doc=InputDocumentation(doc="if paired-end")), ToolInput(tag="in_sd", input_type=Int(optional=True), prefix="--sd", doc=InputDocumentation(doc="(=-1)                     sd")), ToolInput(tag="in_insert_distance", input_type=Int(optional=True), prefix="--insert_distance", doc=InputDocumentation(doc="(=500)       insert distance")), ToolInput(tag="in_print_correct", input_type=Boolean(optional=True), prefix="--print_correct", doc=InputDocumentation(doc="output correct reads")), ToolInput(tag="in_sim_reads", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_ref_dot_fa", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_reads_dot_fa", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sample_Reads_V0_1_0().translate("wdl", allow_empty_container=True)

