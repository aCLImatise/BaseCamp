from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, String, Boolean

Svtk_Collect_Pesr_V0_1_0 = CommandToolBuilder(tool="svtk_collect_pesr", base_command=["svtk", "collect-pesr"], inputs=[ToolInput(tag="in_index_dir", input_type=Directory(optional=True), prefix="--index-dir", doc=InputDocumentation(doc="Directory of local BAM indexes if accessing a remote\nS3 bam.")), ToolInput(tag="in_region", input_type=String(optional=True), prefix="--region", doc=InputDocumentation(doc="Tabix-formatted region to parse")), ToolInput(tag="in_b_gzip", input_type=Boolean(optional=True), prefix="--bgzip", doc=InputDocumentation(doc="bgzip and tabix index output")), ToolInput(tag="in_bam", input_type=String(), position=0, doc=InputDocumentation(doc="Local or S3 path to bam")), ToolInput(tag="in_sample", input_type=String(), position=1, doc=InputDocumentation(doc="ID to append to each line of output files.")), ToolInput(tag="in_split_file", input_type=String(), position=2, doc=InputDocumentation(doc="Output split counts.")), ToolInput(tag="in_disc_file", input_type=String(), position=3, doc=InputDocumentation(doc="Output discordant pairs."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Svtk_Collect_Pesr_V0_1_0().translate("wdl", allow_empty_container=True)

