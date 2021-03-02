from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Converttoextent_V0_1_0 = CommandToolBuilder(tool="convertToExtent", base_command=["convertToExtent"], inputs=[ToolInput(tag="in_be_chatty", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="be chatty")), ToolInput(tag="in_full_query", input_type=Boolean(optional=True), prefix="-fullquery", doc=InputDocumentation(doc="output the whole query def line")), ToolInput(tag="in_full_genomic", input_type=Boolean(optional=True), prefix="-fullgenomic", doc=InputDocumentation(doc="output the whole genomic def line")), ToolInput(tag="in_exons", input_type=Boolean(optional=True), prefix="-exons", doc=InputDocumentation(doc="include exons")), ToolInput(tag="in_extended", input_type=Boolean(optional=True), prefix="-extended", doc=InputDocumentation(doc="include the IDX of each sequence")), ToolInput(tag="in_in", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_out", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Converttoextent_V0_1_0().translate("wdl", allow_empty_container=True)

