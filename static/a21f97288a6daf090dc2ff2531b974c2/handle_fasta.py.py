from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Handle_Fasta_Py_V0_1_0 = CommandToolBuilder(tool="handle_fasta.py", base_command=["handle_fasta.py"], inputs=[ToolInput(tag="in_complement", input_type=Boolean(optional=True), prefix="--Complement", doc=InputDocumentation(doc="Create a double genome with both + and - strand")), ToolInput(tag="in_conversion", input_type=String(optional=True), prefix="-Conversion", doc=InputDocumentation(doc="")), ToolInput(tag="in_in_fast_a", input_type=String(), position=0, doc=InputDocumentation(doc="FASTA format genome")), ToolInput(tag="in_out_fast_a", input_type=String(), position=1, doc=InputDocumentation(doc="Output FASTA full path")), ToolInput(tag="in_chr_size_path", input_type=String(), position=2, doc=InputDocumentation(doc="Path to 2 column file with first column being the\nchromosome name and the second column being the\nchromosome size")), ToolInput(tag="in_chr_dir", input_type=String(), position=3, doc=InputDocumentation(doc="Path to directory for writing individual fasta files\nfor each chromosome")), ToolInput(tag="in_information", input_type=String(), position=0, doc=InputDocumentation(doc="-Conversion CONVERSION"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Handle_Fasta_Py_V0_1_0().translate("wdl", allow_empty_container=True)

