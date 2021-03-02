from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Portcullis_Rule_Filter_V0_1_0 = CommandToolBuilder(tool="portcullis_rule_filter", base_command=["portcullis_rule_filter"], inputs=[ToolInput(tag="in_script", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_to", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_automate", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_csv", input_type=String(), position=3, doc=InputDocumentation(doc="")), ToolInput(tag="in_filtering", input_type=String(), position=4, doc=InputDocumentation(doc="")), ToolInput(tag="in_based", input_type=String(), position=5, doc=InputDocumentation(doc="")), ToolInput(tag="in_on", input_type=String(), position=6, doc=InputDocumentation(doc="")), ToolInput(tag="in_a", input_type=String(), position=7, doc=InputDocumentation(doc="")), ToolInput(tag="in_json", input_type=String(), position=8, doc=InputDocumentation(doc="")), ToolInput(tag="in_configuration_dot", input_type=String(), position=9, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Portcullis_Rule_Filter_V0_1_0().translate("wdl", allow_empty_container=True)

