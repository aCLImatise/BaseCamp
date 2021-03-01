from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Yaml2Gff_1_4_Pl_V0_1_0 = CommandToolBuilder(tool="yaml2gff.1.4.pl", base_command=["yaml2gff.1.4.pl"], inputs=[ToolInput(tag="in_filter_status", input_type=String(optional=True), prefix="--filterstatus", doc=InputDocumentation(doc="filter out alignments with given status, e.g. 'incomplete'"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Yaml2Gff_1_4_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

