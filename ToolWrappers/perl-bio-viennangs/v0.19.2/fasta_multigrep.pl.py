from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Fasta_Multigrep_Pl_V0_1_0 = CommandToolBuilder(tool="fasta_multigrep.pl", base_command=["fasta_multigrep.pl"], inputs=[ToolInput(tag="in_list", input_type=Boolean(optional=True), prefix="--list", doc=InputDocumentation(doc="Colon (:) separated list of Fasta IDs to extract (mandatory)")), ToolInput(tag="in_fa", input_type=Boolean(optional=True), prefix="--fa", doc=InputDocumentation(doc="Input file in Fasta format (mandatory)")), ToolInput(tag="in_man", input_type=Boolean(optional=True), prefix="--man", doc=InputDocumentation(doc="Prints the manual page and exits\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fasta_Multigrep_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

