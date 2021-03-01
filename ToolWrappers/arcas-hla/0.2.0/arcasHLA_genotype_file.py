from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File

Arcashla_Genotype_File_V0_1_0 = CommandToolBuilder(tool="arcasHLA_genotype_file", base_command=["arcasHLA", "genotype", "file"], inputs=[ToolInput(tag="in_ar_cash_la", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_genotype", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_fast_qs", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_or", input_type=String(), position=3, doc=InputDocumentation(doc="")), ToolInput(tag="in_alignment_dot_p", input_type=String(), position=4, doc=InputDocumentation(doc="")), ToolInput(tag="in_file", input_type=File(), position=5, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/arcas-hla:0.2.0--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Arcashla_Genotype_File_V0_1_0().translate("wdl")

