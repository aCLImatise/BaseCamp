from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Dr_Disco_Integrate_V0_1_0 = CommandToolBuilder(tool="dr_disco_integrate", base_command=["dr-disco", "integrate"], inputs=[ToolInput(tag="in_gtf", input_type=File(optional=True), prefix="--gtf", doc=InputDocumentation(doc="Use gene annotation for estimating fusion genes and improve\nclassification of exonic (GTF file)")), ToolInput(tag="in_fast_a", input_type=File(optional=True), prefix="--fasta", doc=InputDocumentation(doc="Use reference sequences to estimate edit distances to splice\njunction motifs (FASTA file)")), ToolInput(tag="in_table_input_file", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_table_output_file", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dr_Disco_Integrate_V0_1_0().translate("wdl", allow_empty_container=True)

