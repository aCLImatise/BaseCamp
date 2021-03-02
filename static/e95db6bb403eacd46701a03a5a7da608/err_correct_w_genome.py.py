from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File

Err_Correct_W_Genome_Py_V0_1_0 = CommandToolBuilder(tool="err_correct_w_genome.py", base_command=["err_correct_w_genome.py"], inputs=[ToolInput(tag="in_generate", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_sequences", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_using", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_genome", input_type=String(), position=3, doc=InputDocumentation(doc="")), ToolInput(tag="in_bases", input_type=String(), position=4, doc=InputDocumentation(doc="")), ToolInput(tag="in_and", input_type=String(), position=5, doc=InputDocumentation(doc="")), ToolInput(tag="in_sam", input_type=String(), position=6, doc=InputDocumentation(doc="")), ToolInput(tag="in_alignment", input_type=String(), position=7, doc=InputDocumentation(doc="")), ToolInput(tag="in_file", input_type=File(), position=8, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/cdna_cupcake:19.0.0--py37h97743b1_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Err_Correct_W_Genome_Py_V0_1_0().translate("wdl")

