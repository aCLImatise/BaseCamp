from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Boolean

Gcloud_Topic_Escaping_V0_1_0 = CommandToolBuilder(tool="gcloud_topic_escaping", base_command=["gcloud", "topic", "escaping"], inputs=[ToolInput(tag="in_list_flag", input_type=Int(optional=True), prefix="--list-flag", doc=InputDocumentation(doc=",value2,value3")), ToolInput(tag="in_dict_flag", input_type=Int(optional=True), prefix="--dict-flag", doc=InputDocumentation(doc="=value1,key2=value2")), ToolInput(tag="in_addresses", input_type=Boolean(optional=True), prefix="--addresses", doc=InputDocumentation(doc="^:^123.456.789.198:22.333.146.189:789.312.645      \")), ToolInput(tag="in_metadata", input_type=Boolean(optional=True), prefix="--metadata", doc=InputDocumentation(doc="\"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gcloud_Topic_Escaping_V0_1_0().translate("wdl", allow_empty_container=True)

