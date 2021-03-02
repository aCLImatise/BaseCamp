from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Sdsort_V0_1_0 = CommandToolBuilder(tool="sdsort", base_command=["sdsort"], inputs=[ToolInput(tag="in_numeric_sort_default", input_type=Boolean(optional=True), prefix="-n", doc=InputDocumentation(doc="numeric sort (default is text sort)")), ToolInput(tag="in_descending_sort_default", input_type=Boolean(optional=True), prefix="-r", doc=InputDocumentation(doc="descending sort (default is ascending sort)")), ToolInput(tag="in_datafield_specifies_sort", input_type=Boolean(optional=True), prefix="-f", doc=InputDocumentation(doc="<DataField>   specifies sort field")), ToolInput(tag="in_fast_mode_sorts", input_type=Boolean(optional=True), prefix="-s", doc=InputDocumentation(doc="fast mode. Sorts the records for each named compound independently (must be consecutive)")), ToolInput(tag="in_id", input_type=Boolean(optional=True), prefix="-id", doc=InputDocumentation(doc="<NameField>  specifies compound name field (default = 1st title line)")), ToolInput(tag="in_data_field", input_type=String(optional=True), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_sd_files", input_type=String(optional=True), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sdsort_V0_1_0().translate("wdl", allow_empty_container=True)

