from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Gcloud_Sql_Ssl_Certs_V0_1_0 = CommandToolBuilder(tool="gcloud_sql_ssl_certs", base_command=["gcloud", "sql", "ssl-certs"], inputs=[ToolInput(tag="in_certificates_dot", input_type=String(), position=0, doc=InputDocumentation(doc="GCLOUD WIDE FLAGS")), ToolInput(tag="in_create", input_type=String(), position=0, doc=InputDocumentation(doc="Creates an SSL certificate for a Cloud SQL instance.")), ToolInput(tag="in_delete", input_type=String(), position=1, doc=InputDocumentation(doc="Deletes an SSL certificate for a Cloud SQL instance.")), ToolInput(tag="in_describe", input_type=String(), position=2, doc=InputDocumentation(doc="Retrieves information about an SSL cert for a Cloud SQL instance.")), ToolInput(tag="in_list", input_type=String(), position=3, doc=InputDocumentation(doc="Lists all SSL certs for a Cloud SQL instance."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gcloud_Sql_Ssl_Certs_V0_1_0().translate("wdl", allow_empty_container=True)

