from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, String, Boolean

Hailctl_Dataproc_Submit_V0_1_0 = CommandToolBuilder(tool="hailctl_dataproc_submit", base_command=["hailctl", "dataproc", "submit"], inputs=[ToolInput(tag="in_files", input_type=Directory(optional=True), prefix="--files", doc=InputDocumentation(doc="Comma-separated list of files to add to the working\ndirectory of the Hail application.")), ToolInput(tag="in_py_files", input_type=String(optional=True), prefix="--pyfiles", doc=InputDocumentation(doc="Comma-separated list of files (or directories with\npython files) to add to the PYTHONPATH.")), ToolInput(tag="in_properties", input_type=String(optional=True), prefix="--properties", doc=InputDocumentation(doc="Extra Spark properties to set.")), ToolInput(tag="in_g_cloud_configuration", input_type=String(optional=True), prefix="--gcloud_configuration", doc=InputDocumentation(doc="Google Cloud configuration to submit job (defaults to\ncurrently set configuration).")), ToolInput(tag="in_dry_run", input_type=Boolean(optional=True), prefix="--dry-run", doc=InputDocumentation(doc="Print gcloud dataproc command, but don't run it.")), ToolInput(tag="in_name", input_type=String(), position=0, doc=InputDocumentation(doc="Cluster name.")), ToolInput(tag="in_script", input_type=String(), position=1, doc=InputDocumentation(doc="Path to script."))], outputs=[], container="quay.io/biocontainers/hail:0.2.61--py36hf1ae8f4_1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hailctl_Dataproc_Submit_V0_1_0().translate("wdl")

