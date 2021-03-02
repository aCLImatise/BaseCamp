from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, String

Normalize_Bigwig_Py_V0_1_0 = CommandToolBuilder(tool="normalize_bigwig.py", base_command=["normalize_bigwig.py"], inputs=[ToolInput(tag="in_bw_file", input_type=File(optional=True), prefix="--bwfile", doc=InputDocumentation(doc="Input BigWig file. [required]")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="Output wig file. [required]")), ToolInput(tag="in_wig_sum", input_type=Int(optional=True), prefix="--wigsum", doc=InputDocumentation(doc="Specified wigsum. 100000000 equals to coverage of 1\nmillion 100nt reads. default=100000000  [optional]")), ToolInput(tag="in_ref_gene", input_type=String(optional=True), prefix="--refgene", doc=InputDocumentation(doc="Reference gene model in bed format. [optional]")), ToolInput(tag="in_chunk", input_type=Int(optional=True), prefix="--chunk", doc=InputDocumentation(doc="Chromosome chunk size. Each chomosome will be cut into\nsamll chunks of this size. Decrease chunk size will\nsave more RAM. default=500000 (bp) [optional]")), ToolInput(tag="in_format", input_type=String(optional=True), prefix="--format", doc=InputDocumentation(doc="Output format. either 'wig' or 'bgr'. 'bgr' save disk\nspace but make program slower. default=bgr\n"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="Output wig file. [required]"))], container="quay.io/biocontainers/rseqc:4.0.0--py38h0213d0e_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Normalize_Bigwig_Py_V0_1_0().translate("wdl")

