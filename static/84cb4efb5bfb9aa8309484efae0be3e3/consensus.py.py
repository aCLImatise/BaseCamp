from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Consensus_Py_V0_1_0 = CommandToolBuilder(tool="consensus.py", base_command=["consensus.py"], inputs=[ToolInput(tag="in_alignment", input_type=String(), position=0, doc=InputDocumentation(doc="The aligned sequences, in FASTA format (but no multi-line\nsequences)."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Consensus_Py_V0_1_0().translate("wdl", allow_empty_container=True)

