from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int

Enano_V0_1_0 = CommandToolBuilder(tool="enano", base_command=["enano"], inputs=[ToolInput(tag="in_use_mode_default", input_type=Boolean(optional=True), prefix="-c", doc=InputDocumentation(doc="To use MAX COMPRESION MODE. Default is FAST MODE.")), ToolInput(tag="in_base_sequence_context", input_type=Int(optional=True), prefix="-k", doc=InputDocumentation(doc="Base sequence context length. Default is 7 (max 13).")), ToolInput(tag="in_length_dna_sequence", input_type=Int(optional=True), prefix="-l", doc=InputDocumentation(doc="Length of the DNA sequence context. Default is 6."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Enano_V0_1_0().translate("wdl", allow_empty_container=True)

