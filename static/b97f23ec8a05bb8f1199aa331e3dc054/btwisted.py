from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Btwisted_V0_1_0 = CommandToolBuilder(tool="btwisted", base_command=["btwisted"], inputs=[ToolInput(tag="in_angle_data", input_type=Boolean(optional=True), prefix="-angledata", doc=InputDocumentation(doc="datafile   [Eangles.dat] DNA base pair twist angle data")), ToolInput(tag="in_file", input_type=File(), position=0, doc=InputDocumentation(doc="-energydata         datafile   [Eenergy.dat] DNA base pair stacking"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Btwisted_V0_1_0().translate("wdl", allow_empty_container=True)

