from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Boolean

Bamaddrg_V0_1_0 = CommandToolBuilder(tool="bamaddrg", base_command=["bamaddrg"], inputs=[ToolInput(tag="in_bam", input_type=File(optional=True), prefix="--bam", doc=InputDocumentation(doc="use this BAM as input")), ToolInput(tag="in_uncompressed", input_type=String(optional=True), prefix="--uncompressed", doc=InputDocumentation(doc="uncompressed BAM output")), ToolInput(tag="in_sample", input_type=File(optional=True), prefix="--sample", doc=InputDocumentation(doc="optionally apply this sample name to the preceeding BAM file")), ToolInput(tag="in_delete", input_type=String(optional=True), prefix="--delete", doc=InputDocumentation(doc="removes this sample name and all associated RGs from the header")), ToolInput(tag="in_clear", input_type=Boolean(optional=True), prefix="--clear", doc=InputDocumentation(doc="removes all RGs which were in the old file")), ToolInput(tag="in_read_group", input_type=File(optional=True), prefix="--read-group", doc=InputDocumentation(doc="optionally apply this read group to the preceeding BAM file")), ToolInput(tag="in_region", input_type=String(optional=True), prefix="--region", doc=InputDocumentation(doc="limit alignments to those in this region (chr:start..end)"))], outputs=[], container="quay.io/biocontainers/bamaddrg:9baba65f88228e55639689a3cea38dd150e6284f--h970fe44_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bamaddrg_V0_1_0().translate("wdl")

