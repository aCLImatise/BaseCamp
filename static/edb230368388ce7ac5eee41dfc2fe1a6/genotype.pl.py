from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory

Genotype_Pl_V0_1_0 = CommandToolBuilder(tool="genotype.pl", base_command=["genotype.pl"], inputs=[ToolInput(tag="in_tmp", input_type=Directory(optional=True), prefix="--tmp", doc=InputDocumentation(doc=": the tmp directory; If unspecified, use /usr/local/bin/tmp/"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Genotype_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

