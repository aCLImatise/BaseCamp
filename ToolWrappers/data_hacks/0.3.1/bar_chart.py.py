from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Bar_Chart_Py_V0_1_0 = CommandToolBuilder(tool="bar_chart.py", base_command=["bar_chart.py"], inputs=[ToolInput(tag="in_agg", input_type=Boolean(optional=True), prefix="--agg", doc=InputDocumentation(doc="Two column input format, space seperated with\nvalue<space>key")), ToolInput(tag="in_agg_key_value", input_type=Boolean(optional=True), prefix="--agg-key-value", doc=InputDocumentation(doc="Two column input format, space seperated with\nkey<space>value")), ToolInput(tag="in_sort_keys", input_type=Boolean(optional=True), prefix="--sort-keys", doc=InputDocumentation(doc="sort by the key [default]")), ToolInput(tag="in_sort_values", input_type=Boolean(optional=True), prefix="--sort-values", doc=InputDocumentation(doc="sort by the frequence")), ToolInput(tag="in_reverse_sort", input_type=Boolean(optional=True), prefix="--reverse-sort", doc=InputDocumentation(doc="reverse the sort")), ToolInput(tag="in_numeric_sort", input_type=Boolean(optional=True), prefix="--numeric-sort", doc=InputDocumentation(doc="sort keys by numeric sequencing")), ToolInput(tag="in_percentage", input_type=Boolean(optional=True), prefix="--percentage", doc=InputDocumentation(doc="List percentage for each bar")), ToolInput(tag="in_cat", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_data", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bar_Chart_Py_V0_1_0().translate("wdl", allow_empty_container=True)

