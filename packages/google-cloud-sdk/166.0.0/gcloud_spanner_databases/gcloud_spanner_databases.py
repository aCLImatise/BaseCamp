from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Gcloud_Spanner_Databases_V0_1_0 = CommandToolBuilder(tool="gcloud_spanner_databases", base_command=["gcloud", "spanner", "databases"], inputs=[ToolInput(tag="in_ddl", input_type=String(), position=0, doc=InputDocumentation(doc="Manage the DDL for Cloud Spanner databases.")), ToolInput(tag="in_add_i_am_policy_binding", input_type=String(), position=0, doc=InputDocumentation(doc="Add an IAM policy binding to a Cloud Spanner database.")), ToolInput(tag="in_create", input_type=String(), position=1, doc=InputDocumentation(doc="Create a Cloud Spanner database.")), ToolInput(tag="in_delete", input_type=String(), position=2, doc=InputDocumentation(doc="Delete a Cloud Spanner database.")), ToolInput(tag="in_describe", input_type=String(), position=3, doc=InputDocumentation(doc="Describe a Cloud Spanner database.")), ToolInput(tag="in_execute_sql", input_type=String(), position=4, doc=InputDocumentation(doc="Executes a read-only SQL query against a Cloud Spanner database.")), ToolInput(tag="in_get_i_am_policy", input_type=String(), position=5, doc=InputDocumentation(doc="Get the IAM policy for a Cloud Spanner database.")), ToolInput(tag="in_list", input_type=String(), position=6, doc=InputDocumentation(doc="List the Cloud Spanner databases contained within the given instance.")), ToolInput(tag="in_remove_i_am_policy_binding", input_type=String(), position=7, doc=InputDocumentation(doc="Remove an IAM policy binding from a Cloud Spanner database.")), ToolInput(tag="in_set_i_am_policy", input_type=String(), position=8, doc=InputDocumentation(doc="Set the IAM policy for a Cloud Spanner database."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gcloud_Spanner_Databases_V0_1_0().translate("wdl", allow_empty_container=True)

