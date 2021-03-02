from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Sigcleave_V0_1_0 = CommandToolBuilder(tool="sigcleave", base_command=["sigcleave"], inputs=[ToolInput(tag="in_min_weight", input_type=Boolean(optional=True), prefix="-minweight", doc=InputDocumentation(doc="float      [3.5] Minimum scoring weight value for the\npredicted cleavage site (Number from 0.000\nto 100.000)")), ToolInput(tag="in_prokaryote", input_type=Boolean(optional=True), prefix="-prokaryote", doc=InputDocumentation(doc="boolean    Specifies the sequence is prokaryotic and\nchanges the default scoring data file name"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sigcleave_V0_1_0().translate("wdl", allow_empty_container=True)

