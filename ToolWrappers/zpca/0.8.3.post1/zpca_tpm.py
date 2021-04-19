from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, Directory, Boolean

Zpca_Tpm_V0_1_0 = CommandToolBuilder(tool="zpca_tpm", base_command=["zpca-tpm"], inputs=[ToolInput(tag="in_tpm", input_type=File(optional=True), prefix="--tpm", doc=InputDocumentation(doc="TPM table (tsv).")), ToolInput(tag="in_tpm_filter", input_type=Int(optional=True), prefix="--tpm-filter", doc=InputDocumentation(doc="Filter genes/transcripts with mean expression less than the provided filter. Default: 0")), ToolInput(tag="in_tpm_pseudo_count", input_type=Int(optional=True), prefix="--tpm-pseudocount", doc=InputDocumentation(doc="Pseudocount to add in the tpm table. Default: 1")), ToolInput(tag="in_out", input_type=Directory(optional=True), prefix="--out", doc=InputDocumentation(doc="Output directory")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Verbose"))], outputs=[ToolOutput(tag="out_out", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_out", type_hint=File()), doc=OutputDocumentation(doc="Output directory"))], container="quay.io/biocontainers/zpca:0.8.3.post1--pyh5e36f6f_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Zpca_Tpm_V0_1_0().translate("wdl")

