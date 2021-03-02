from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Find_Duplicates_V0_1_0 = CommandToolBuilder(tool="find_duplicates", base_command=["find_duplicates"], inputs=[ToolInput(tag="in_nuc_me_rpath", input_type=File(optional=True), prefix="--nucmerpath", doc=InputDocumentation(doc="Path to the 'nucmer' executable.")), ToolInput(tag="in_reference", input_type=File(optional=True), prefix="--reference", doc=InputDocumentation(doc="Path to the reference fasta file.\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Find_Duplicates_V0_1_0().translate("wdl", allow_empty_container=True)

