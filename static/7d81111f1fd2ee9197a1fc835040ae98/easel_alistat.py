from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Easel_Alistat_V0_1_0 = CommandToolBuilder(tool="easel_alistat", base_command=["easel", "alistat"], inputs=[ToolInput(tag="in_use_tabular_line", input_type=Boolean(optional=True), prefix="-1", doc=InputDocumentation(doc=": use tabular output, one line per alignment")), ToolInput(tag="in_dna", input_type=Boolean(optional=True), prefix="--dna", doc=InputDocumentation(doc=": use DNA alphabet (don't autodetect)")), ToolInput(tag="in_rna", input_type=Boolean(optional=True), prefix="--rna", doc=InputDocumentation(doc=": use RNA alphabet (don't autodetect)")), ToolInput(tag="in_amino", input_type=Boolean(optional=True), prefix="--amino", doc=InputDocumentation(doc=": use protein alphabet (don't autodetect)")), ToolInput(tag="in_options", input_type=Boolean(optional=True), prefix="-options", doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Easel_Alistat_V0_1_0().translate("wdl", allow_empty_container=True)

