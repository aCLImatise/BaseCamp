from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Gcloud_Sql_Users_V0_1_0 = CommandToolBuilder(tool="gcloud_sql_users", base_command=["gcloud", "sql", "users"], inputs=[ToolInput(tag="in_create", input_type=String(), position=0, doc=InputDocumentation(doc="Creates a user in a given instance.")), ToolInput(tag="in_delete", input_type=String(), position=1, doc=InputDocumentation(doc="Deletes a Cloud SQL user in a given instance.")), ToolInput(tag="in_list", input_type=String(), position=2, doc=InputDocumentation(doc="Lists Cloud SQL users in a given instance.")), ToolInput(tag="in_set_password", input_type=String(), position=3, doc=InputDocumentation(doc="Changes a user's password in a given instance."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gcloud_Sql_Users_V0_1_0().translate("wdl", allow_empty_container=True)

