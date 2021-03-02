from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean, File

Fasta_Subsample_V0_1_0 = CommandToolBuilder(tool="fasta_subsample", base_command=["fasta-subsample"], inputs=[ToolInput(tag="in_len", input_type=String(optional=True), prefix="-len", doc=InputDocumentation(doc="")), ToolInput(tag="in_off", input_type=String(optional=True), prefix="-off", doc=InputDocumentation(doc="")), ToolInput(tag="in_nor_and", input_type=Boolean(optional=True), prefix="-norand", doc=InputDocumentation(doc="")), ToolInput(tag="in_seed", input_type=String(optional=True), prefix="-seed", doc=InputDocumentation(doc="")), ToolInput(tag="in_file_dot", input_type=File(), position=0, doc=InputDocumentation(doc="By default the sequences will be selected using a random number"))], outputs=[], container="quay.io/biocontainers/meme:5.3.0--py38pl526hc1f1133_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fasta_Subsample_V0_1_0().translate("wdl")

