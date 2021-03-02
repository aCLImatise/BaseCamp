from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Rsem_Gen_Transcript_Plots_V0_1_0 = CommandToolBuilder(tool="rsem_gen_transcript_plots", base_command=["rsem-gen-transcript-plots"], inputs=[ToolInput(tag="in_sample_name", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_input_list", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_is_allele_specific", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_id_type", input_type=String(), position=3, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rsem_Gen_Transcript_Plots_V0_1_0().translate("wdl", allow_empty_container=True)

