from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Descpoly_V0_1_0 = CommandToolBuilder(tool="descPoly", base_command=["descPoly"], inputs=[ToolInput(tag="in_infile_sequence_data", input_type=Boolean(optional=True), prefix="-i", doc=InputDocumentation(doc="infile (for sequence data in FASTA format)")), ToolInput(tag="in_specify_sequence_count", input_type=Boolean(optional=True), prefix="-o", doc=InputDocumentation(doc="[integer]    specify the sequence (i.e. count from one) of the outgroup, if present in data"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Descpoly_V0_1_0().translate("wdl", allow_empty_container=True)

