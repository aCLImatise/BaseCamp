from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Mb_Filter_Sites_Gff_File_V0_1_0 = CommandToolBuilder(tool="mb_filter_sites_gff_file", base_command=["mb-filter-sites", "gff_file"], inputs=[ToolInput(tag="in_padding_bp", input_type=String(optional=True), prefix="--padding_bp", doc=InputDocumentation(doc="")), ToolInput(tag="in_mb_filter_sites", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mb_Filter_Sites_Gff_File_V0_1_0().translate("wdl", allow_empty_container=True)

