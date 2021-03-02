from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File

Fasta_Get_Markov_V0_1_0 = CommandToolBuilder(tool="fasta_get_markov", base_command=["fasta-get-markov"], inputs=[ToolInput(tag="in_sequence", input_type=String(optional=True), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_file", input_type=File(optional=True), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_background", input_type=String(optional=True), position=2, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/meme:5.3.0--py38pl526hc1f1133_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fasta_Get_Markov_V0_1_0().translate("wdl")

