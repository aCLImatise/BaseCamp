from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Extract_Fasta_Sequence_Blast_Report_Py_V0_1_0 = CommandToolBuilder(tool="Extract_fasta_sequence_blast_report.py", base_command=["Extract_fasta_sequence_blast_report.py"], inputs=[ToolInput(tag="in_v", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="")), ToolInput(tag="in_output_folder", input_type=String(), position=0, doc=InputDocumentation(doc="output folder name & quality report prefix")), ToolInput(tag="in_directory_path", input_type=String(), position=1, doc=InputDocumentation(doc="path to directory of blast reports"))], outputs=[], container="quay.io/biocontainers/gnuvid:2.1--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Extract_Fasta_Sequence_Blast_Report_Py_V0_1_0().translate("wdl")

