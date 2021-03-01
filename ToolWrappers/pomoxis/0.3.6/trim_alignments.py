from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Trim_Alignments_V0_1_0 = CommandToolBuilder(tool="trim_alignments", base_command=["trim_alignments"], inputs=[ToolInput(tag="in_ref_name", input_type=String(optional=True), prefix="--ref_name", doc=InputDocumentation(doc="Reference to process, only needed if bams contain\nmultiple references. (default: None)")), ToolInput(tag="in_output_prefix", input_type=String(optional=True), prefix="--output_prefix", doc=InputDocumentation(doc="Prefix for outputs. (default: trimmed)")), ToolInput(tag="in_reference_fast_a", input_type=String(optional=True), prefix="--reference_fasta", doc=InputDocumentation(doc="Reference fasta to trim to alignment window. (default:\nNone)\n")), ToolInput(tag="in_bams", input_type=String(), position=0, doc=InputDocumentation(doc="input bam files"))], outputs=[], container="quay.io/biocontainers/pomoxis:0.3.6--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Trim_Alignments_V0_1_0().translate("wdl")

