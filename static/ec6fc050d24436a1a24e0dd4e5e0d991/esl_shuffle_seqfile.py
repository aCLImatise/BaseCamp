from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Esl_Shuffle_Seqfile_V0_1_0 = CommandToolBuilder(tool="esl_shuffle_seqfile", base_command=["esl-shuffle", "seqfile"], inputs=[ToolInput(tag="in_g", input_type=Boolean(optional=True), prefix="-G", doc=InputDocumentation(doc="")), ToolInput(tag="in_a", input_type=Boolean(optional=True), prefix="-A", doc=InputDocumentation(doc="")), ToolInput(tag="in_esl_shuffle", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_msa_file", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/easel:0.47--h516909a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Esl_Shuffle_Seqfile_V0_1_0().translate("wdl")

