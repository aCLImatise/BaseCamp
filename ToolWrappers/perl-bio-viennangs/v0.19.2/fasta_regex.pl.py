from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File

Fasta_Regex_Pl_V0_1_0 = CommandToolBuilder(tool="fasta_regex.pl", base_command=["fasta_regex.pl"], inputs=[ToolInput(tag="in_name", input_type=String(optional=True), prefix="--name", doc=InputDocumentation(doc="")), ToolInput(tag="in_fa", input_type=File(optional=True), prefix="--fa", doc=InputDocumentation(doc="")), ToolInput(tag="in_motif", input_type=String(optional=True), prefix="--motif", doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fasta_Regex_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

