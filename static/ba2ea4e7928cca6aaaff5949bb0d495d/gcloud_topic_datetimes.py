from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Float, String

Gcloud_Topic_Datetimes_V0_1_0 = CommandToolBuilder(tool="gcloud_topic_datetimes", base_command=["gcloud", "topic", "datetimes"], inputs=[ToolInput(tag="in_sep_", input_type=Int(), position=0, doc=InputDocumentation(doc="2003-Sep-25")), ToolInput(tag="in_two_five_sep_two_zero_zero_three", input_type=Int(), position=1, doc=InputDocumentation(doc="Sep-25-2003")), ToolInput(tag="in_other_date_separators", input_type=Int(), position=2, doc=InputDocumentation(doc="other date separators:")), ToolInput(tag="in_two_zero_zero_three_dot_sep_dot_two_five", input_type=Float(), position=3, doc=InputDocumentation(doc="2003/09/25")), ToolInput(tag="in_string_dot", input_type=String(), position=0, doc=InputDocumentation(doc="For example:\no 1 month ago: -p1m\no 30 minutes from now: +pt30m\no 2 hours and 30 minutes ago: -p2h30m\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gcloud_Topic_Datetimes_V0_1_0().translate("wdl", allow_empty_container=True)

