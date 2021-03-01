from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Gcloud_Sql_Operations_V0_1_0 = CommandToolBuilder(tool="gcloud_sql_operations", base_command=["gcloud", "sql", "operations"], inputs=[ToolInput(tag="in_instance_dot", input_type=String(), position=0, doc=InputDocumentation(doc="GCLOUD WIDE FLAGS")), ToolInput(tag="in_describe", input_type=String(), position=0, doc=InputDocumentation(doc="Retrieves information about a Cloud SQL instance operation.")), ToolInput(tag="in_list", input_type=String(), position=1, doc=InputDocumentation(doc="Lists all instance operations for the given Cloud SQL instance.")), ToolInput(tag="in_wait", input_type=String(), position=2, doc=InputDocumentation(doc="Waits for one or more operations to complete."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gcloud_Sql_Operations_V0_1_0().translate("wdl", allow_empty_container=True)

