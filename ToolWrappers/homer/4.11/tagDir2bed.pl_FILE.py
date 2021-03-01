from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int, Directory

Tagdir2Bed_Pl_File_V0_1_0 = CommandToolBuilder(tool="tagDir2bed.pl_FILE", base_command=["tagDir2bed.pl", "FILE"], inputs=[ToolInput(tag="in_len", input_type=Boolean(optional=True), prefix="-len", doc=InputDocumentation(doc="<#> (read length to report, default: given sizes in tags.tsv file)")), ToolInput(tag="in_separate", input_type=Boolean(optional=True), prefix="-separate", doc=InputDocumentation(doc="(report separate BED reads if there are multiple reads per position)")), ToolInput(tag="in_tag_dir_two_bed_do_tpl", input_type=Int(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_tag_directory", input_type=Directory(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Tagdir2Bed_Pl_File_V0_1_0().translate("wdl", allow_empty_container=True)

