from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Novoutil_Addns_V0_1_0 = CommandToolBuilder(tool="novoutil_addns", base_command=["novoutil", "addns"], inputs=[ToolInput(tag="in_number_ns_add", input_type=Boolean(optional=True), prefix="-n", doc=InputDocumentation(doc="99      Number of Ns to add. default 50.")), ToolInput(tag="in_fast_a_files", input_type=String(), position=0, doc=InputDocumentation(doc="is one or more fasta files to be processed.\nInput files may be compressed with gzip or bzip."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Novoutil_Addns_V0_1_0().translate("wdl", allow_empty_container=True)

