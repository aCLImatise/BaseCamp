from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Gtf_To_Sam_V0_1_0 = CommandToolBuilder(tool="gtf_to_sam", base_command=["gtf_to_sam"], inputs=[ToolInput(tag="in_reference_seq", input_type=Boolean(optional=True), prefix="--reference-seq", doc=InputDocumentation(doc="reference fasta file                     [ default:   NULL ]")), ToolInput(tag="in_raw_fp_km", input_type=Boolean(optional=True), prefix="--raw-fpkm", doc=InputDocumentation(doc="use FPKM instead of isoform fraction")), ToolInput(tag="in_cufflinks", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gtf_To_Sam_V0_1_0().translate("wdl", allow_empty_container=True)

