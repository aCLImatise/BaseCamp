from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int

To_Upper_Case_Pl_V0_1_0 = CommandToolBuilder(tool="to_upper_case.pl", base_command=["to_upper_case.pl"], inputs=[ToolInput(tag="in_convert_lower_case", input_type=Boolean(optional=True), prefix="-l", doc=InputDocumentation(doc=":       Convert to lower case")), ToolInput(tag="in_convert_column_default", input_type=Int(optional=True), prefix="-c", doc=InputDocumentation(doc=": Convert only column <num> (default: convert the entire line)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    To_Upper_Case_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

