from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int

Filter_With_Microbes_And_Remapping_Pl_V0_1_0 = CommandToolBuilder(tool="filter_with_microbes_and_remapping.pl", base_command=["filter_with_microbes_and_remapping.pl"], inputs=[ToolInput(tag="in_bam", input_type=Int(optional=True), prefix="-bam", doc=InputDocumentation(doc="required at /usr/local/bin/filter_with_microbes_and_remapping.pl line 113."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Filter_With_Microbes_And_Remapping_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

