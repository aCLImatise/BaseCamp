from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Gcloud_Sql_Backups_V0_1_0 = CommandToolBuilder(tool="gcloud_sql_backups", base_command=["gcloud", "sql", "backups"], inputs=[ToolInput(tag="in_instances", input_type=String(), position=0, doc=InputDocumentation(doc="SYNOPSIS")), ToolInput(tag="in_create", input_type=String(), position=0, doc=InputDocumentation(doc="Creates a backup of a Cloud SQL instance.")), ToolInput(tag="in_delete", input_type=String(), position=1, doc=InputDocumentation(doc="Delete a backup of a Cloud SQL instance.")), ToolInput(tag="in_describe", input_type=String(), position=2, doc=InputDocumentation(doc="Retrieves information about a backup.")), ToolInput(tag="in_list", input_type=String(), position=3, doc=InputDocumentation(doc="Lists all backups associated with a given instance.")), ToolInput(tag="in_restore", input_type=String(), position=4, doc=InputDocumentation(doc="Restores a backup of a Cloud SQL instance."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gcloud_Sql_Backups_V0_1_0().translate("wdl", allow_empty_container=True)

