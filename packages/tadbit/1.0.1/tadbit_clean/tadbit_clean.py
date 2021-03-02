from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Array, Int, Boolean

Tadbit_Clean_V0_1_0 = CommandToolBuilder(tool="tadbit_clean", base_command=["tadbit", "clean"], inputs=[ToolInput(tag="in_change_workdir", input_type=File(optional=True), prefix="--change_workdir", doc=InputDocumentation(doc="In case folder was moved, input the new path")), ToolInput(tag="in_workdir", input_type=File(optional=True), prefix="--workdir", doc=InputDocumentation(doc="path to working directory (generated with the tool tadbit mapper)")), ToolInput(tag="in_job_ids", input_type=Array(t=Int(), optional=True), prefix="--jobids", doc=InputDocumentation(doc="jobids of the files and entries to be removed")), ToolInput(tag="in_delete", input_type=Boolean(optional=True), prefix="--delete", doc=InputDocumentation(doc="delete files, otherwise only DB entries.")), ToolInput(tag="in_compress", input_type=Boolean(optional=True), prefix="--compress", doc=InputDocumentation(doc="compress files and update paths accordingly")), ToolInput(tag="in_nox", input_type=Boolean(optional=True), prefix="--noX", doc=InputDocumentation(doc="no display server (X screen)")), ToolInput(tag="in_tmp_db", input_type=File(optional=True), prefix="--tmpdb", doc=InputDocumentation(doc="if provided uses this directory to manipulate the database"))], outputs=[], container="quay.io/biocontainers/tadbit:1.0.1--py38h6ed170a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Tadbit_Clean_V0_1_0().translate("wdl")

