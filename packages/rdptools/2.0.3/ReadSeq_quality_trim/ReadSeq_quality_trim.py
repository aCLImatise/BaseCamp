from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int, String

Readseq_Quality_Trim_V0_1_0 = CommandToolBuilder(tool="ReadSeq_quality_trim", base_command=["ReadSeq", "quality-trim"], inputs=[ToolInput(tag="in_fast_q_out", input_type=Boolean(optional=True), prefix="--fastq-out", doc=InputDocumentation(doc="Write fastq instead of fasta file, offset 33\n(#)")), ToolInput(tag="in_illumina", input_type=Boolean(optional=True), prefix="--illumina", doc=InputDocumentation(doc="Illumina trimming mode")), ToolInput(tag="in_less_than", input_type=Boolean(optional=True), prefix="--less-than", doc=InputDocumentation(doc="Trim at <= instead of strictly =")), ToolInput(tag="in_min_seq_length", input_type=Int(optional=True), prefix="--min_seq_length", doc=InputDocumentation(doc="filter sequence by minimum sequence length,\ndefault is 1\n")), ToolInput(tag="in_usage", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Readseq_Quality_Trim_V0_1_0().translate("wdl", allow_empty_container=True)

