from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Amptk_Unoise3_V0_1_0 = CommandToolBuilder(tool="amptk_unoise3", base_command=["amptk", "unoise3"], inputs=[ToolInput(tag="in_fast_q", input_type=Boolean(optional=True), prefix="--fastq", doc=InputDocumentation(doc="Input FASTQ file (Required)")), ToolInput(tag="in_out", input_type=Boolean(optional=True), prefix="--out", doc=InputDocumentation(doc="Output base name. Default: out")), ToolInput(tag="in_max_ee", input_type=Boolean(optional=True), prefix="--maxee", doc=InputDocumentation(doc="Expected error quality trimming. Default: 1.0")), ToolInput(tag="in_minsize", input_type=Boolean(optional=True), prefix="--minsize", doc=InputDocumentation(doc="Minimum size to keep for denoising. Default: 8")), ToolInput(tag="in_pct_otu", input_type=Boolean(optional=True), prefix="--pct_otu", doc=InputDocumentation(doc="OTU Clustering Radius (percent). Default: 97")), ToolInput(tag="in_u_search", input_type=Boolean(optional=True), prefix="--usearch", doc=InputDocumentation(doc="Path to USEARCH9. Default: usearch9")), ToolInput(tag="in_u_chime_ref", input_type=Boolean(optional=True), prefix="--uchime_ref", doc=InputDocumentation(doc="Run Ref Chimera filtering. Default: off [ITS, LSU, COI, 16S, custom path]")), ToolInput(tag="in_cpus", input_type=Boolean(optional=True), prefix="--cpus", doc=InputDocumentation(doc="Number of CPUs to use. Default: all")), ToolInput(tag="in_debug", input_type=Boolean(optional=True), prefix="--debug", doc=InputDocumentation(doc="Keep intermediate files.")), ToolInput(tag="in_arguments", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Amptk_Unoise3_V0_1_0().translate("wdl", allow_empty_container=True)

