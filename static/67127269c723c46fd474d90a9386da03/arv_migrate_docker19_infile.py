from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int

Arv_Migrate_Docker19_Infile_V0_1_0 = CommandToolBuilder(tool="arv_migrate_docker19_infile", base_command=["arv-migrate-docker19", "infile"], inputs=[ToolInput(tag="in_force", input_type=Boolean(optional=True), prefix="--force", doc=InputDocumentation(doc="")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="")), ToolInput(tag="in_arv_migrate_docker_one_nine", input_type=Int(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/arvados-python-client:2.1.2--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Arv_Migrate_Docker19_Infile_V0_1_0().translate("wdl")

