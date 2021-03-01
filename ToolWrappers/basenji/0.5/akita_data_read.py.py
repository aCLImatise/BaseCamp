from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int, Boolean

Akita_Data_Read_Py_V0_1_0 = CommandToolBuilder(tool="akita_data_read.py", base_command=["akita_data_read.py"], inputs=[ToolInput(tag="in_set_blacklist_nucleotides", input_type=String(optional=True), prefix="-b", doc=InputDocumentation(doc="Set blacklist nucleotides to a baseline value.")), ToolInput(tag="in_clip", input_type=String(optional=True), prefix="--clip", doc=InputDocumentation(doc="Clip values post-summary to a maximum [Default: none]")), ToolInput(tag="in_crop", input_type=Int(optional=True), prefix="--crop", doc=InputDocumentation(doc="Crop bp off each end [Default: 0]")), ToolInput(tag="in_positions_diagonal_ignore", input_type=Int(optional=True), prefix="-d", doc=InputDocumentation(doc="Positions on the diagonal to ignore [Default: 2]")), ToolInput(tag="in_gaussian_kernel_stddev", input_type=Int(optional=True), prefix="-k", doc=InputDocumentation(doc="Gaussian kernel stddev to smooth values [Default: 0]")), ToolInput(tag="in_average_pooling_width", input_type=Int(optional=True), prefix="-w", doc=InputDocumentation(doc="Average pooling width [Default: 1]")), ToolInput(tag="in_as_obs_exp", input_type=Boolean(optional=True), prefix="--as_obsexp", doc=InputDocumentation(doc="save targets as obsexp profiles")), ToolInput(tag="in_global_obs_exp", input_type=Boolean(optional=True), prefix="--global_obsexp", doc=InputDocumentation(doc="use global obs/exp")), ToolInput(tag="in_no_log", input_type=Boolean(optional=True), prefix="--no_log", doc=InputDocumentation(doc="no not take log for obs/exp")), ToolInput(tag="in_genome_hic_file", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_seqs_bed_file", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_seqs_hic_file", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/basenji:0.5--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Akita_Data_Read_Py_V0_1_0().translate("wdl")

