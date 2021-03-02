from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int, Boolean

Filter_Gff_Values_V0_1_0 = CommandToolBuilder(tool="filter_gff_values", base_command=["filter-gff", "values"], inputs=[ToolInput(tag="in_verbose", input_type=String(optional=True), prefix="--verbose", doc=InputDocumentation(doc="filter by custom key:value, if the argument is 'key:value'\nthe annotation is kept if it contains an attribute 'key'\nwhose value is exactly 'value' as a string")), ToolInput(tag="in_str_in", input_type=String(optional=True), prefix="--str-in", doc=InputDocumentation(doc="Same as '--str-eq' but 'value' is contained in the attribute")), ToolInput(tag="in_num_eq", input_type=Int(optional=True), prefix="--num-eq", doc=InputDocumentation(doc="Same as '--str-eq' but 'value' is a number which is equal or\ngreater than")), ToolInput(tag="in_num_ge", input_type=Int(optional=True), prefix="--num-ge", doc=InputDocumentation(doc="Same as '--str-eq' but 'value' is a number which is equal or\ngreater than")), ToolInput(tag="in_num_le", input_type=Int(optional=True), prefix="--num-le", doc=InputDocumentation(doc="Same as '--num-ge' but 'value' is a number which is equal or\nless than")), ToolInput(tag="in_num_gt", input_type=Int(optional=True), prefix="--num-gt", doc=InputDocumentation(doc="Same as '--str-eq' but 'value' is a number which is greater")), ToolInput(tag="in_progress", input_type=Boolean(optional=True), prefix="--progress", doc=InputDocumentation(doc="Shows Progress Bar")), ToolInput(tag="in_than", input_type=String(), position=0, doc=InputDocumentation(doc="--num-lt TEXT  Same as '--num-ge' but 'value' is a number which is less than"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Filter_Gff_Values_V0_1_0().translate("wdl", allow_empty_container=True)

