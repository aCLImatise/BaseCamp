from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Rbt_Sequence_Stats_V0_1_0 = CommandToolBuilder(tool="rbt_sequence_stats", base_command=["rbt", "sequence-stats"], inputs=[ToolInput(tag="in_fast_q", input_type=Boolean(optional=True), prefix="--fastq", doc=InputDocumentation(doc="Flag to indicate the sequence in stdin is in fastq format."))], outputs=[], container="quay.io/biocontainers/rust-bio-tools:0.20.3--h4eb7995_3", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rbt_Sequence_Stats_V0_1_0().translate("wdl")

