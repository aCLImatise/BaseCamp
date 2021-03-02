from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Boolean

Blobtools_Seqfilter_V0_1_0 = CommandToolBuilder(tool="blobtools_seqfilter", base_command=["blobtools", "seqfilter"], inputs=[ToolInput(tag="in_in_file", input_type=File(optional=True), prefix="--infile", doc=InputDocumentation(doc="FASTA file of sequences (Headers are split at whitespaces)")), ToolInput(tag="in_list", input_type=File(optional=True), prefix="--list", doc=InputDocumentation(doc="TXT file containing headers of sequences to keep")), ToolInput(tag="in_out", input_type=String(optional=True), prefix="--out", doc=InputDocumentation(doc="Output prefix")), ToolInput(tag="in_invert", input_type=Boolean(optional=True), prefix="--invert", doc=InputDocumentation(doc="Invert filtering (Sequences w/ headers NOT in list)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Blobtools_Seqfilter_V0_1_0().translate("wdl", allow_empty_container=True)

