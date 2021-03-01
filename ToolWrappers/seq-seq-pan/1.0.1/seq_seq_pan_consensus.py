from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Seq_Seq_Pan_Consensus_V0_1_0 = CommandToolBuilder(tool="seq_seq_pan_consensus", base_command=["seq-seq-pan-consensus"], inputs=[ToolInput(tag="in_input_do_tx_mfa", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Seq_Seq_Pan_Consensus_V0_1_0().translate("wdl", allow_empty_container=True)

