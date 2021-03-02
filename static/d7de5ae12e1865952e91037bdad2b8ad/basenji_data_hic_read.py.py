from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Float, Boolean, Int

Basenji_Data_Hic_Read_Py_V0_1_0 = CommandToolBuilder(tool="basenji_data_hic_read.py", base_command=["basenji_data_hic_read.py"], inputs=[ToolInput(tag="in_set_blacklist_nucleotides", input_type=String(optional=True), prefix="-b", doc=InputDocumentation(doc="Set blacklist nucleotides to a baseline value.")), ToolInput(tag="in_clip_values_postsummary", input_type=String(optional=True), prefix="-c", doc=InputDocumentation(doc="Clip values post-summary to a maximum [Default: none]")), ToolInput(tag="in_scale_values_by", input_type=Float(optional=True), prefix="-s", doc=InputDocumentation(doc="Scale values by [Default: 1.0]")), ToolInput(tag="in_soft", input_type=Boolean(optional=True), prefix="--soft", doc=InputDocumentation(doc="Soft clip values, applying sqrt to the execess above the\nthreshold [Default: False]")), ToolInput(tag="in_summary_statistic_compute", input_type=String(optional=True), prefix="-u", doc=InputDocumentation(doc="Summary statistic to compute in windows [Default: sum]")), ToolInput(tag="in_average_pooling_width", input_type=Int(optional=True), prefix="-w", doc=InputDocumentation(doc="Average pooling width [Default: 1]")), ToolInput(tag="in_as_obs_exp", input_type=Boolean(optional=True), prefix="--as_obsexp", doc=InputDocumentation(doc="save targets as obsexp profiles")), ToolInput(tag="in_genome_hic_file", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_seqs_bed_file", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_seqs_hic_file", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/basenji:0.5--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Basenji_Data_Hic_Read_Py_V0_1_0().translate("wdl")

