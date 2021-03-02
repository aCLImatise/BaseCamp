from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Gcloud_Sql_Instances_V0_1_0 = CommandToolBuilder(tool="gcloud_sql_instances", base_command=["gcloud", "sql", "instances"], inputs=[ToolInput(tag="in_clone", input_type=String(), position=0, doc=InputDocumentation(doc="Clones a Cloud SQL instance.")), ToolInput(tag="in_create", input_type=String(), position=1, doc=InputDocumentation(doc="Creates a new Cloud SQL instance.")), ToolInput(tag="in_delete", input_type=String(), position=2, doc=InputDocumentation(doc="Deletes a Cloud SQL instance.")), ToolInput(tag="in_describe", input_type=String(), position=3, doc=InputDocumentation(doc="Displays configuration and metadata about a Cloud SQL instance.")), ToolInput(tag="in_export", input_type=String(), position=4, doc=InputDocumentation(doc="Exports data from a Cloud SQL instance.")), ToolInput(tag="in_failover", input_type=String(), position=5, doc=InputDocumentation(doc="Causes a high-availability Cloud SQL instance to failover.")), ToolInput(tag="in_import", input_type=String(), position=6, doc=InputDocumentation(doc="Imports data into a Cloud SQL instance from Google Cloud Storage.")), ToolInput(tag="in_list", input_type=String(), position=7, doc=InputDocumentation(doc="Lists Cloud SQL instances in a given project.")), ToolInput(tag="in_patch", input_type=String(), position=8, doc=InputDocumentation(doc="Updates the settings of a Cloud SQL instance.")), ToolInput(tag="in_promote_replica", input_type=String(), position=9, doc=InputDocumentation(doc="Promotes Cloud SQL read replica to a stand-alone instance.")), ToolInput(tag="in_reset_ssl_config", input_type=String(), position=10, doc=InputDocumentation(doc="Deletes all client certificates and generates a new server certificate.")), ToolInput(tag="in_restart", input_type=String(), position=11, doc=InputDocumentation(doc="Restarts a Cloud SQL instance.")), ToolInput(tag="in_restore_backup", input_type=String(), position=12, doc=InputDocumentation(doc="Restores a backup of a Cloud SQL instance.")), ToolInput(tag="in_set_root_password", input_type=String(), position=13, doc=InputDocumentation(doc="(DEPRECATED) Sets the password of the MySQL root user."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gcloud_Sql_Instances_V0_1_0().translate("wdl", allow_empty_container=True)

