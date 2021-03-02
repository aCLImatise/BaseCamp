from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Gcloud_Dns_Record_Sets_V0_1_0 = CommandToolBuilder(tool="gcloud_dns_record_sets", base_command=["gcloud", "dns", "record-sets"], inputs=[ToolInput(tag="in_changes", input_type=String(), position=0, doc=InputDocumentation(doc="View details about changes to your Cloud DNS record-sets.")), ToolInput(tag="in_transaction", input_type=String(), position=1, doc=InputDocumentation(doc="Make scriptable and transactional changes to your record-sets.")), ToolInput(tag="in_export", input_type=String(), position=0, doc=InputDocumentation(doc="Export your record-sets into a file.")), ToolInput(tag="in_import", input_type=String(), position=1, doc=InputDocumentation(doc="Import record-sets into your managed-zone.")), ToolInput(tag="in_list", input_type=String(), position=2, doc=InputDocumentation(doc="View the list of record-sets in a managed-zone."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gcloud_Dns_Record_Sets_V0_1_0().translate("wdl", allow_empty_container=True)

