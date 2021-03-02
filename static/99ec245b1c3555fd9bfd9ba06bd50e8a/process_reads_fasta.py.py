from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Process_Reads_Fasta_Py_V0_1_0 = CommandToolBuilder(tool="process_reads_fasta.py", base_command=["process-reads-fasta.py"], inputs=[ToolInput(tag="in_fast_an", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Process_Reads_Fasta_Py_V0_1_0().translate("wdl", allow_empty_container=True)

