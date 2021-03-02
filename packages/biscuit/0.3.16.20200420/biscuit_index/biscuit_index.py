from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean

Biscuit_Index_V0_1_0 = CommandToolBuilder(tool="biscuit_index", base_command=["biscuit", "index"], inputs=[ToolInput(tag="in_bwt_construction_algorithm", input_type=String(optional=True), prefix="-a", doc=InputDocumentation(doc="BWT construction algorithm: bwtsw or is [auto]")), ToolInput(tag="in_prefix_of_index", input_type=String(optional=True), prefix="-p", doc=InputDocumentation(doc="prefix of the index [same as fasta name]")), ToolInput(tag="in_index_files_named", input_type=Boolean(optional=True), prefix="-6", doc=InputDocumentation(doc="index files named as <in.fasta>.64.* instead of <in.fasta>.*"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Biscuit_Index_V0_1_0().translate("wdl", allow_empty_container=True)

