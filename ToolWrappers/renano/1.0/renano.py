from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int

Renano_V0_1_0 = CommandToolBuilder(tool="renano", base_command=["renano"], inputs=[ToolInput(tag="in_use_mode_default", input_type=Boolean(optional=True), prefix="-c", doc=InputDocumentation(doc="To use MAX COMPRESION MODE. Default is FAST MODE.")), ToolInput(tag="in_base_call_sequence", input_type=Int(optional=True), prefix="-k", doc=InputDocumentation(doc="Base call sequence context length. Default is 7 (max 13).")), ToolInput(tag="in_length_dna_neighborhood", input_type=Int(optional=True), prefix="-l", doc=InputDocumentation(doc="Length of the DNA neighborhood sequence. Default is 6."))], outputs=[], container="quay.io/biocontainers/renano:1.0--h9a82719_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Renano_V0_1_0().translate("wdl")

