from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int

Quasitools_Aacoverage_V0_1_0 = CommandToolBuilder(tool="quasitools_aacoverage", base_command=["quasitools", "aacoverage"], inputs=[ToolInput(tag="in_bam", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_reference", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_bed_four_file", input_type=Int(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Quasitools_Aacoverage_V0_1_0().translate("wdl", allow_empty_container=True)

