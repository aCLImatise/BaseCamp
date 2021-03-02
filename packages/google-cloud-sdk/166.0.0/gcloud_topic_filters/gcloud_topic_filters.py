from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Gcloud_Topic_Filters_V0_1_0 = CommandToolBuilder(tool="gcloud_topic_filters", base_command=["gcloud", "topic", "filters"], inputs=[ToolInput(tag="in_format", input_type=String(optional=True), prefix="--format", doc=InputDocumentation(doc="[ATTRIBUTES](PROJECTION) and --filter=EXPRESSION flags along")), ToolInput(tag="in_logic_operator", input_type=String(), position=0, doc=InputDocumentation(doc="Expressions containing both AND and OR must be parenthesized to\ndisambiguate precedence.\nNOT term-1\nTrue if term-1 is False, otherwise False.\nterm-1 AND term-2\nTrue if both term-1 and term-2 are true.\nterm-1 OR term-2\nTrue if at least one of term-1 or term-2 is true.\nterm-1 term-2\nTrue if both term-1 and term-2 are true. Implicit conjunction has\nlower precedence than OR.")), ToolInput(tag="in_terms", input_type=String(), position=1, doc=InputDocumentation(doc="A term is a key operator value tuple, where key is a dotted name that\nevaluates to the value of a resource attribute, and value may be:\nnumber\ninteger or floating point numeric constant\nunquoted literal\ncharacter sequence terminated by space, ( or )\nquoted literal\n'...' or '...' Most filter expressions need to be quoted in shell\ncommands. If you use '...' shell quotes then use '...' filter\nstring literal quotes and vice versa.")), ToolInput(tag="in_value_dot", input_type=String(), position=0, doc=InputDocumentation(doc="EXAMPLES"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gcloud_Topic_Filters_V0_1_0().translate("wdl", allow_empty_container=True)

