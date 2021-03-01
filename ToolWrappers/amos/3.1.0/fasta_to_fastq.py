from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Fasta_To_Fastq_V0_1_0 = CommandToolBuilder(tool="fasta_to_fastq", base_command=["fasta_to_fastq"], inputs=[ToolInput(tag="in_qv", input_type=String(optional=True), prefix="-qv", doc=InputDocumentation(doc=": Assign this as the fake quality values (default: '^')"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fasta_To_Fastq_V0_1_0().translate("wdl", allow_empty_container=True)

