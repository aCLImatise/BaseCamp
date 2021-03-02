from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Fcsmergedownsample_R_V0_1_0 = CommandToolBuilder(tool="FCSMergeDownsample.R", base_command=["FCSMergeDownsample.R"], inputs=[ToolInput(tag="in_union", input_type=String(), position=0, doc=InputDocumentation(doc="Attaching package: 'flowCore'")), ToolInput(tag="in_normalize", input_type=String(), position=0, doc=InputDocumentation(doc="Error in if (args[2] == 'FCS') { : missing value where TRUE/FALSE needed"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fcsmergedownsample_R_V0_1_0().translate("wdl", allow_empty_container=True)

