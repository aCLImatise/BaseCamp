from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int

Sam_To_Gff3_Py_V0_1_0 = CommandToolBuilder(tool="sam_to_gff3.py", base_command=["sam_to_gff3.py"], inputs=[ToolInput(tag="in_input_fast_a", input_type=String(optional=True), prefix="--input_fasta", doc=InputDocumentation(doc="(Optional) input fasta. If given, coverage will be\ncalculated.")), ToolInput(tag="in_source_name_ex", input_type=Int(optional=True), prefix="--source", doc=InputDocumentation(doc="source name (ex: hg38, mm10)\n")), ToolInput(tag="in_samfilename", input_type=String(), position=0, doc=InputDocumentation(doc="sam_filename")), ToolInput(tag="in_sam_filename", input_type=String(), position=0, doc=InputDocumentation(doc="optional arguments:"))], outputs=[], container="quay.io/biocontainers/cdna_cupcake:19.0.0--py37h97743b1_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sam_To_Gff3_Py_V0_1_0().translate("wdl")

