from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Ppanini_Rename_Contigs_V0_1_0 = CommandToolBuilder(tool="ppanini_rename_contigs", base_command=["ppanini_rename_contigs"], inputs=[ToolInput(tag="in_input", input_type=File(optional=True), prefix="--input", doc=InputDocumentation(doc="fasta file")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="fasta file\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ppanini_Rename_Contigs_V0_1_0().translate("wdl", allow_empty_container=True)

