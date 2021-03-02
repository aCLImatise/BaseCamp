from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Haystack_Download_Genome_V0_1_0 = CommandToolBuilder(tool="haystack_download_genome", base_command=["haystack_download_genome"], inputs=[ToolInput(tag="in_name", input_type=String(), position=0, doc=InputDocumentation(doc="genome name. Example: haystack_download_genome hg19."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Haystack_Download_Genome_V0_1_0().translate("wdl", allow_empty_container=True)

