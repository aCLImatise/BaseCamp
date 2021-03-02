from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Xander_Customized_Hmmer_Version_For_Prepare_Gene_Sh_V0_1_0 = CommandToolBuilder(tool="xander_customized_hmmer_version_for_prepare_gene.sh", base_command=["xander_customized_hmmer_version_for_prepare_gene.sh"], inputs=[ToolInput(tag="in_gene", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Xander_Customized_Hmmer_Version_For_Prepare_Gene_Sh_V0_1_0().translate("wdl", allow_empty_container=True)

