from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, String

Fastq_Trim_Poly_At_V0_1_0 = CommandToolBuilder(tool="fastq_trim_poly_at", base_command=["fastq_trim_poly_at"], inputs=[ToolInput(tag="in_file", input_type=File(optional=True), prefix="--file", doc=InputDocumentation(doc=":fastq (optional gzipped) file name")), ToolInput(tag="in_ofile", input_type=File(optional=True), prefix="--ofile", doc=InputDocumentation(doc=": fastq file name where the processed reads will be written")), ToolInput(tag="in_min_poly_at_len", input_type=Int(optional=True), prefix="--min_poly_at_len", doc=InputDocumentation(doc=": minimum length of poly-A|T sequence to remove.")), ToolInput(tag="in_min_len", input_type=Int(optional=True), prefix="--min_len", doc=InputDocumentation(doc=": minimum read length.")), ToolInput(tag="in_outfile", input_type=String(optional=True), prefix="--outfile", doc=InputDocumentation(doc="")), ToolInput(tag="in_optional", input_type=String(optional=True), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_parameters", input_type=String(optional=True), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fastq_Trim_Poly_At_V0_1_0().translate("wdl", allow_empty_container=True)

