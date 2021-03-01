from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Gcloud_Dataproc_V0_1_0 = CommandToolBuilder(tool="gcloud_dataproc", base_command=["gcloud", "dataproc"], inputs=[ToolInput(tag="in_region", input_type=String(optional=True), prefix="--region", doc=InputDocumentation(doc="Specifies the Cloud Dataproc region to use. Each Cloud Dataproc region\nconstitutes an independent resource namespace constrained to deploying\ninstances into Google Compute Engine zones inside the region. The\ndefault value of 'global' is a special multi-region namespace which is\ncapable of deploying instances into all Google Compute Engine zones\nglobally, and is disjoint from other Cloud Dataproc regions. Overrides\nthe default dataproc/region property value for this command invocation.")), ToolInput(tag="in_clusters", input_type=String(), position=0, doc=InputDocumentation(doc="Create and manage Google Cloud Dataproc clusters.")), ToolInput(tag="in_jobs", input_type=String(), position=1, doc=InputDocumentation(doc="Submit and manage Google Cloud Dataproc jobs.")), ToolInput(tag="in_operations", input_type=String(), position=2, doc=InputDocumentation(doc="View and manage Google Cloud Dataproc operations."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gcloud_Dataproc_V0_1_0().translate("wdl", allow_empty_container=True)

