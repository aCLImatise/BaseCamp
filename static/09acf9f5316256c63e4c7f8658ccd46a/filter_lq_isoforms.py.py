from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Float, Boolean, String

Filter_Lq_Isoforms_Py_V0_1_0 = CommandToolBuilder(tool="filter_lq_isoforms.py", base_command=["filter_lq_isoforms.py"], inputs=[ToolInput(tag="in_min_fl_count", input_type=Int(optional=True), prefix="--min_fl_count", doc=InputDocumentation(doc="Minimum FL count (default: 2).")), ToolInput(tag="in_min_exp_acc", input_type=Float(optional=True), prefix="--min_exp_acc", doc=InputDocumentation(doc="Minimum predicted accuracy (default: 0.99).")), ToolInput(tag="in_is_fl_nc", input_type=Boolean(optional=True), prefix="--is_flnc", doc=InputDocumentation(doc="Input FASTQ is FLNC, not LQ")), ToolInput(tag="in_fast_q_filename", input_type=String(), position=0, doc=InputDocumentation(doc="LQ FASTQ filename (ex: lq_isoforms.fastq")), ToolInput(tag="in_output_filename", input_type=String(), position=1, doc=InputDocumentation(doc="Output FASTQ filename"))], outputs=[], container="quay.io/biocontainers/cdna_cupcake:22.0.0--py37h97743b1_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Filter_Lq_Isoforms_Py_V0_1_0().translate("wdl")

