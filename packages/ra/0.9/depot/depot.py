from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Depot_V0_1_0 = CommandToolBuilder(tool="depot", base_command=["depot"], inputs=[ToolInput(tag="in_depot", input_type=Boolean(optional=True), prefix="--depot", doc=InputDocumentation(doc="depot path (string)")), ToolInput(tag="in_reads", input_type=Boolean(optional=True), prefix="--reads", doc=InputDocumentation(doc="reads file (string [=])")), ToolInput(tag="in_overlaps", input_type=Boolean(optional=True), prefix="--overlaps", doc=InputDocumentation(doc="overlaps file (string [=])")), ToolInput(tag="in_overlaps_format", input_type=Boolean(optional=True), prefix="--overlaps_format", doc=InputDocumentation(doc="overlaps format; supported: mhap, radump (string [=mhap])")), ToolInput(tag="in_reads_format", input_type=Boolean(optional=True), prefix="--reads_format", doc=InputDocumentation(doc="reads format; supported: fasta, fastq, afg (string [=fasta])"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Depot_V0_1_0().translate("wdl", allow_empty_container=True)

