from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Descseq_V0_1_0 = CommandToolBuilder(tool="descseq", base_command=["descseq"], inputs=[ToolInput(tag="in_name", input_type=Boolean(optional=True), prefix="-name", doc=InputDocumentation(doc="string     Name of the sequence (Any string)")), ToolInput(tag="in_description", input_type=Boolean(optional=True), prefix="-description", doc=InputDocumentation(doc="string     Description of the sequence (Any string)")), ToolInput(tag="in_append", input_type=Boolean(optional=True), prefix="-append", doc=InputDocumentation(doc="boolean    [N] This allows you to append the name or\ndescription you have given on to the end of\nthe existing name or description of the\nsequence."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Descseq_V0_1_0().translate("wdl", allow_empty_container=True)

