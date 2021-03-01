from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int, String

Histogram_Py_V0_1_0 = CommandToolBuilder(tool="histogram.py", base_command=["histogram.py"], inputs=[ToolInput(tag="in_agg", input_type=Boolean(optional=True), prefix="--agg", doc=InputDocumentation(doc="Two column input format, space seperated with\nvalue<space>key")), ToolInput(tag="in_agg_key_value", input_type=Boolean(optional=True), prefix="--agg-key-value", doc=InputDocumentation(doc="Two column input format, space seperated with\nkey<space>value")), ToolInput(tag="in_min", input_type=Int(optional=True), prefix="--min", doc=InputDocumentation(doc="minimum value for graph")), ToolInput(tag="in_max", input_type=Int(optional=True), prefix="--max", doc=InputDocumentation(doc="maximum value for graph")), ToolInput(tag="in_buckets", input_type=Int(optional=True), prefix="--buckets", doc=InputDocumentation(doc="Number of buckets to use for the histogram")), ToolInput(tag="in_custom_buckets", input_type=String(optional=True), prefix="--custom-buckets", doc=InputDocumentation(doc="Comma seperated list of bucket edges for the histogram")), ToolInput(tag="in_no_mvs_d", input_type=Boolean(optional=True), prefix="--no-mvsd", doc=InputDocumentation(doc="Disable the calculation of Mean, Variance and SD\n(improves performance)")), ToolInput(tag="in_bucket_format", input_type=String(optional=True), prefix="--bucket-format", doc=InputDocumentation(doc="format for bucket numbers")), ToolInput(tag="in_percentage", input_type=Boolean(optional=True), prefix="--percentage", doc=InputDocumentation(doc="List percentage for each bar")), ToolInput(tag="in_cat", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_data", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Histogram_Py_V0_1_0().translate("wdl", allow_empty_container=True)

