from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, String, Boolean

Atlas_Run_V0_1_0 = CommandToolBuilder(tool="atlas_run", base_command=["atlas", "run"], inputs=[ToolInput(tag="in_working_dir", input_type=File(optional=True), prefix="--working-dir", doc=InputDocumentation(doc="location to run atlas.")), ToolInput(tag="in_config_file", input_type=File(optional=True), prefix="--config-file", doc=InputDocumentation(doc="config-file generated with 'atlas init'")), ToolInput(tag="in_jobs", input_type=Int(optional=True), prefix="--jobs", doc=InputDocumentation(doc="use at most this many jobs in parallel (see cluster\nsubmission for mor details).")), ToolInput(tag="in_profile", input_type=String(optional=True), prefix="--profile", doc=InputDocumentation(doc="snakemake profile e.g. for cluster execution.")), ToolInput(tag="in_dry_run", input_type=Boolean(optional=True), prefix="--dryrun", doc=InputDocumentation(doc="Test execution.  [default: False]"))], outputs=[], container="quay.io/biocontainers/metagenome-atlas:2.4.5--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Atlas_Run_V0_1_0().translate("wdl")

