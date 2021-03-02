from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Gcloud_Sql_Databases_V0_1_0 = CommandToolBuilder(tool="gcloud_sql_databases", base_command=["gcloud", "sql", "databases"], inputs=[ToolInput(tag="in_instances", input_type=String(), position=0, doc=InputDocumentation(doc="SYNOPSIS")), ToolInput(tag="in_create", input_type=String(), position=0, doc=InputDocumentation(doc="Creates a database for a Cloud SQL instance.")), ToolInput(tag="in_delete", input_type=String(), position=1, doc=InputDocumentation(doc="Deletes a Cloud SQL database.")), ToolInput(tag="in_describe", input_type=String(), position=2, doc=InputDocumentation(doc="Displays configuration and metadata about a Cloud SQL database.")), ToolInput(tag="in_list", input_type=String(), position=3, doc=InputDocumentation(doc="Lists databases for a Cloud SQL instance.")), ToolInput(tag="in_patch", input_type=String(), position=4, doc=InputDocumentation(doc="Patches the settings of a Cloud SQL database."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gcloud_Sql_Databases_V0_1_0().translate("wdl", allow_empty_container=True)

