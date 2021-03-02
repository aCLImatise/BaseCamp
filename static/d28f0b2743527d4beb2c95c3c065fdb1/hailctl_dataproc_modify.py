from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int, Boolean

Hailctl_Dataproc_Modify_V0_1_0 = CommandToolBuilder(tool="hailctl_dataproc_modify", base_command=["hailctl", "dataproc", "modify"], inputs=[ToolInput(tag="in_wheel", input_type=String(optional=True), prefix="--wheel", doc=InputDocumentation(doc="New Hail installation.")), ToolInput(tag="in_num_workers", input_type=Int(optional=True), prefix="--num-workers", doc=InputDocumentation(doc="New number of worker machines (min. 2).")), ToolInput(tag="in_num_preemptible_workers", input_type=Int(optional=True), prefix="--num-preemptible-workers", doc=InputDocumentation(doc="New number of preemptible worker machines.")), ToolInput(tag="in_graceful_decommission_timeout", input_type=Int(optional=True), prefix="--graceful-decommission-timeout", doc=InputDocumentation(doc="If set, cluster size downgrade will use graceful\ndecommissioning with the given timeout (e.g. '60m').")), ToolInput(tag="in_max_idle", input_type=Int(optional=True), prefix="--max-idle", doc=InputDocumentation(doc="New maximum idle time before shutdown (e.g. '60m').")), ToolInput(tag="in_dry_run", input_type=Boolean(optional=True), prefix="--dry-run", doc=InputDocumentation(doc="Print gcloud dataproc command, but don't run it.")), ToolInput(tag="in_zone", input_type=Int(optional=True), prefix="--zone", doc=InputDocumentation(doc="Compute zone for Dataproc cluster (default: us-\ncentral1-b).")), ToolInput(tag="in_update_hail_version", input_type=Boolean(optional=True), prefix="--update-hail-version", doc=InputDocumentation(doc="Update the version of hail running on cluster to match\nthe currently installed version.\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hailctl_Dataproc_Modify_V0_1_0().translate("wdl", allow_empty_container=True)

