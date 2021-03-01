from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Vcfsample2Info_V0_1_0 = CommandToolBuilder(tool="vcfsample2info", base_command=["vcfsample2info"], inputs=[ToolInput(tag="in_field", input_type=Boolean(optional=True), prefix="--field", doc=InputDocumentation(doc="Add information about this field in samples to INFO column")), ToolInput(tag="in_info", input_type=Boolean(optional=True), prefix="--info", doc=InputDocumentation(doc="Store the computed statistic in this info field")), ToolInput(tag="in_average", input_type=Boolean(optional=True), prefix="--average", doc=InputDocumentation(doc="Take the mean of samples for field (default)")), ToolInput(tag="in_median", input_type=Boolean(optional=True), prefix="--median", doc=InputDocumentation(doc="Use the median")), ToolInput(tag="in_min", input_type=Boolean(optional=True), prefix="--min", doc=InputDocumentation(doc="Use the min")), ToolInput(tag="in_max", input_type=Boolean(optional=True), prefix="--max", doc=InputDocumentation(doc="Use the max")), ToolInput(tag="in_vcf_file", input_type=File(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Vcfsample2Info_V0_1_0().translate("wdl", allow_empty_container=True)

