from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean, Int

Hmmer2Gff_Aa_File_V0_1_0 = CommandToolBuilder(tool="hmmer2gff_aa_file", base_command=["hmmer2gff", "aa_file"], inputs=[ToolInput(tag="in_db", input_type=String(optional=True), prefix="-db", doc=InputDocumentation(doc="")), ToolInput(tag="in_c", input_type=Boolean(optional=True), prefix="-c", doc=InputDocumentation(doc="")), ToolInput(tag="in_d", input_type=Boolean(optional=True), prefix="-d", doc=InputDocumentation(doc="")), ToolInput(tag="in_t", input_type=String(optional=True), prefix="-t", doc=InputDocumentation(doc="")), ToolInput(tag="in_o", input_type=Boolean(optional=True), prefix="-o", doc=InputDocumentation(doc="")), ToolInput(tag="in_hmmer_two_gff", input_type=Int(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_output_file", input_type=String(optional=True), position=1, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/mgkit:0.5.6--py37hf01694f_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hmmer2Gff_Aa_File_V0_1_0().translate("wdl")

