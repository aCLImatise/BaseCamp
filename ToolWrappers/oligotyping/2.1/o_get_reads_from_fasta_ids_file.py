from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

O_Get_Reads_From_Fasta_Ids_File_V0_1_0 = CommandToolBuilder(tool="o_get_reads_from_fasta_ids_file", base_command=["o-get-reads-from-fasta", "ids_file"], inputs=[ToolInput(tag="in_s", input_type=Boolean(optional=True), prefix="-S", doc=InputDocumentation(doc="")), ToolInput(tag="in_o_get_reads_from_fast_a", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_input_fast_a", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_ids_file", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_output_fast_a", input_type=String(), position=3, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    O_Get_Reads_From_Fasta_Ids_File_V0_1_0().translate("wdl", allow_empty_container=True)

