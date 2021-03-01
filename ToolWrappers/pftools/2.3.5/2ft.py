from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

2Ft_V0_1_0 = CommandToolBuilder(tool="2ft", base_command=["2ft"], inputs=[ToolInput(tag="in_translate_reverse_strand", input_type=Boolean(optional=True), prefix="-r", doc=InputDocumentation(doc=": translate only reverse (antisense) strand.")), ToolInput(tag="in_translate_only_sense", input_type=Boolean(optional=True), prefix="-s", doc=InputDocumentation(doc=": translate only sense strand.")), ToolInput(tag="in_valuespecifies_output_width", input_type=Boolean(optional=True), prefix="-W", doc=InputDocumentation(doc="<value>:\nspecifies the output width (default: 60).\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    2Ft_V0_1_0().translate("wdl", allow_empty_container=True)

