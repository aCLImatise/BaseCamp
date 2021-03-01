from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Fasta_Shuffle_Letters_V0_1_0 = CommandToolBuilder(tool="fasta_shuffle_letters", base_command=["fasta-shuffle-letters"], inputs=[ToolInput(tag="in_sequence_file", input_type=File(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/meme:5.3.0--py38pl526hc1f1133_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fasta_Shuffle_Letters_V0_1_0().translate("wdl")

