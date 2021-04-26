from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int, Boolean

Augur_Index_V0_1_0 = CommandToolBuilder(tool="augur_index", base_command=["augur", "index"], inputs=[ToolInput(tag="in_sequences", input_type=String(optional=True), prefix="--sequences", doc=InputDocumentation(doc="sequences in fasta format (default: None)")), ToolInput(tag="in_output", input_type=Int(optional=True), prefix="--output", doc=InputDocumentation(doc="tab-delimited file containing the number of bases per\nsequence in the given file. Output columns include\nstrain, length, and counts for A, C, G, T, N, other\nvalid IUPAC characters, ambiguous characters ('?' and\n'-'), and other invalid characters. (default: None)")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="print index statistics to stdout (default: False)"))], outputs=[], container="quay.io/biocontainers/augur:12.0.0--pyhdfd78af_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Augur_Index_V0_1_0().translate("wdl")

