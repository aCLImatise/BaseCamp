from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Prophyle_Split_Allseq_Py_V0_1_0 = CommandToolBuilder(tool="prophyle_split_allseq.py", base_command=["prophyle_split_allseq.py"], inputs=[ToolInput(tag="in_fasta_file", input_type=File(optional=True), prefix="-i", doc=InputDocumentation(doc="Fasta file [stdin]")), ToolInput(tag="in_output_dir", input_type=String(), position=0, doc=InputDocumentation(doc="Path to the output directory"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Prophyle_Split_Allseq_Py_V0_1_0().translate("wdl", allow_empty_container=True)

