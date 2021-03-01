from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Gsutil_Mb_V0_1_0 = CommandToolBuilder(tool="gsutil_mb", base_command=["gsutil", "mb"], inputs=[ToolInput(tag="in_specifies_storage_class", input_type=String(optional=True), prefix="-c", doc=InputDocumentation(doc="Specifies the default storage class. Default is 'Standard'.")), ToolInput(tag="in_be_multiregional_location", input_type=String(optional=True), prefix="-l", doc=InputDocumentation(doc="Can be any multi-regional or regional location. See\nhttps://cloud.google.com/storage/docs/storage-classes\nfor a discussion of this distinction. Default is US.\nLocations are case insensitive.")), ToolInput(tag="in_specifies_project_id", input_type=String(optional=True), prefix="-p", doc=InputDocumentation(doc="Specifies the project ID under which to create the bucket.")), ToolInput(tag="in_same_as_c", input_type=String(optional=True), prefix="-s", doc=InputDocumentation(doc="Same as -c."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gsutil_Mb_V0_1_0().translate("wdl", allow_empty_container=True)

