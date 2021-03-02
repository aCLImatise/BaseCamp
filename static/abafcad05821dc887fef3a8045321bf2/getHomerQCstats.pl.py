from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int

Gethomerqcstats_Pl_V0_1_0 = CommandToolBuilder(tool="getHomerQCstats.pl", base_command=["getHomerQCstats.pl"], inputs=[ToolInput(tag="in_mapping_alignment_files", input_type=String(optional=True), prefix="-k", doc=InputDocumentation(doc="(mapping between tag directors and alignment files)")), ToolInput(tag="in_tag_directories_get", input_type=Int(optional=True), prefix="-d", doc=InputDocumentation(doc="[tagDir2] ... (tag directories to get stats from)")), ToolInput(tag="in_chr", input_type=Int(optional=True), prefix="-chr", doc=InputDocumentation(doc="[chr2] ... (print tags for these chromosomes)")), ToolInput(tag="in_sam", input_type=Int(optional=True), prefix="-sam", doc=InputDocumentation(doc="[f2.sam] ... (alignment files, will look for *log files)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gethomerqcstats_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

