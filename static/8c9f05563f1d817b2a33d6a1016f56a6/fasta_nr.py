from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Fasta_Nr_V0_1_0 = CommandToolBuilder(tool="fasta_nr", base_command=["fasta-nr"], inputs=[ToolInput(tag="in_omit_sequence_is", input_type=Boolean(optional=True), prefix="-s", doc=InputDocumentation(doc="omit any sequence that is a shorter substring of another")), ToolInput(tag="in_seqs_dot_fast_a", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/last:1219--h2e03b76_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fasta_Nr_V0_1_0().translate("wdl")

