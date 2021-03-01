from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Filter_Erroneous_Overlaps_V0_1_0 = CommandToolBuilder(tool="filter_erroneous_overlaps", base_command=["filter_erroneous_overlaps"], inputs=[ToolInput(tag="in_depot", input_type=Boolean(optional=True), prefix="--depot", doc=InputDocumentation(doc="depot path (string)")), ToolInput(tag="in_spec_file", input_type=Boolean(optional=True), prefix="--spec_file", doc=InputDocumentation(doc="spec file path (string [=])")), ToolInput(tag="in_working_directory", input_type=Boolean(optional=True), prefix="--working_directory", doc=InputDocumentation(doc="working directory (string [=.])"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Filter_Erroneous_Overlaps_V0_1_0().translate("wdl", allow_empty_container=True)

