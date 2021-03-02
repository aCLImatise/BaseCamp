from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Fasta_To_Mock_Fastq_Py_Output_Fastq_V0_1_0 = CommandToolBuilder(tool="fasta_to_mock_fastq.py_output_fastq", base_command=["fasta_to_mock_fastq.py", "output_fastq"], inputs=[ToolInput(tag="in_q", input_type=String(optional=True), prefix="-q", doc=InputDocumentation(doc="")), ToolInput(tag="in_fast_a_to_mock_fast_q_do_tpy", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/wub:0.5.1--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fasta_To_Mock_Fastq_Py_Output_Fastq_V0_1_0().translate("wdl")

