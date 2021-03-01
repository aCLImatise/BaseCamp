from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean

Phyluce_Assembly_Get_Fasta_Lengths_V0_1_0 = CommandToolBuilder(tool="phyluce_assembly_get_fasta_lengths", base_command=["phyluce_assembly_get_fasta_lengths"], inputs=[ToolInput(tag="in_input", input_type=File(optional=True), prefix="--input", doc=InputDocumentation(doc="The fasta file to summarize")), ToolInput(tag="in_csv", input_type=Boolean(optional=True), prefix="--csv", doc=InputDocumentation(doc="Give output in CSV"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Phyluce_Assembly_Get_Fasta_Lengths_V0_1_0().translate("wdl", allow_empty_container=True)

