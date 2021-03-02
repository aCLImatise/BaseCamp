from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Artic_Tools_Validate_Scheme_V0_1_0 = CommandToolBuilder(tool="artic_tools_validate_scheme", base_command=["artic-tools", "validate_scheme"], inputs=[ToolInput(tag="in_output_primers_eqs", input_type=String(optional=True), prefix="--outputPrimerSeqs", doc=InputDocumentation(doc="If provided, will write primer sequences as multiFASTA (requires --refSeq to be provided)")), ToolInput(tag="in_refseq", input_type=String(optional=True), prefix="--refSeq", doc=InputDocumentation(doc="The reference sequence for the primer scheme (FASTA format)")), ToolInput(tag="in_output_inserts", input_type=String(optional=True), prefix="--outputInserts", doc=InputDocumentation(doc="If provided, will write primer scheme inserts as BED (exluding primer sequences)")), ToolInput(tag="in_scheme", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/artic-tools:0.3.0--hee4d88c_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Artic_Tools_Validate_Scheme_V0_1_0().translate("wdl")

