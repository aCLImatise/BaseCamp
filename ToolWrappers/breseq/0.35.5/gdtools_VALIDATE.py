from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Gdtools_Validate_V0_1_0 = CommandToolBuilder(tool="gdtools_VALIDATE", base_command=["gdtools", "VALIDATE"], inputs=[ToolInput(tag="in_reference", input_type=File(optional=True), prefix="--reference", doc=InputDocumentation(doc="File containing reference sequences in GenBank, GFF3, or FASTA format. If provided, will validate seq_ids and positions in the GD file using these.  Option may be provided multiple times for multiple files. (OPTIONAL)")), ToolInput(tag="in_verbose", input_type=String(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Verbose mode. Outputs additional information about progress. (OPTIONAL)"))], outputs=[], container="quay.io/biocontainers/breseq:0.35.5--h8b12597_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gdtools_Validate_V0_1_0().translate("wdl")

