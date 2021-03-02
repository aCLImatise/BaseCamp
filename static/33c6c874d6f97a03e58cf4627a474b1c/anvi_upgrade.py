from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Anvi_Upgrade_V0_1_0 = CommandToolBuilder(tool="anvi_upgrade", base_command=["anvi-upgrade"], inputs=[ToolInput(tag="in_repository", input_type=String(optional=True), prefix="--repository", doc=InputDocumentation(doc="Source repository to download releases, currently only\nGithub is supported. Enter in 'merenlab/anvio' format.\n(default: merenlab/anvio)"))], outputs=[], container="quay.io/biocontainers/anvio-minimal:7--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Anvi_Upgrade_V0_1_0().translate("wdl")

