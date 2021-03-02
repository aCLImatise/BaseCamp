from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Float, Boolean

Qual_Trim_Py_V0_1_0 = CommandToolBuilder(tool="qual_trim.py", base_command=["qual_trim.py"], inputs=[ToolInput(tag="in_asciiencoded_offset_eg", input_type=Int(optional=True), prefix="-b", doc=InputDocumentation(doc="ASCII-encoded quality offset, e.g. 33 or 64 (default: 33)")), ToolInput(tag="in_error_probability_cutoff", input_type=Float(optional=True), prefix="-p", doc=InputDocumentation(doc="error probability cutoff (default: 0.1)")), ToolInput(tag="in_quality_score_cutoff", input_type=Float(optional=True), prefix="-q", doc=InputDocumentation(doc="quality score cutoff (default: '-p 0.1')")), ToolInput(tag="in_minimum_read_length", input_type=Int(optional=True), prefix="-l", doc=InputDocumentation(doc="minimum read length in bp (default: 16)")), ToolInput(tag="in_illumina_five", input_type=Boolean(optional=True), prefix="--illumina5", doc=InputDocumentation(doc="Illumina 1.5+ encoding marked with 'B'")), ToolInput(tag="in_solexa", input_type=Boolean(optional=True), prefix="--solexa", doc=InputDocumentation(doc="Solexa encoding"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Qual_Trim_Py_V0_1_0().translate("wdl", allow_empty_container=True)

