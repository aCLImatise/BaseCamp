from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Check_Tradis_Tags_V0_1_0 = CommandToolBuilder(tool="check_tradis_tags", base_command=["check_tradis_tags"], inputs=[ToolInput(tag="in_bam_file_tradis", input_type=Boolean(optional=True), prefix="-b", doc=InputDocumentation(doc=": bam file with tradis tags")), ToolInput(tag="in_check_tags", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Check_Tradis_Tags_V0_1_0().translate("wdl", allow_empty_container=True)

