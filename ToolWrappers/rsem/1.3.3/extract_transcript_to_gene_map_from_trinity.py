from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Extract_Transcript_To_Gene_Map_From_Trinity_V0_1_0 = CommandToolBuilder(tool="extract_transcript_to_gene_map_from_trinity", base_command=["extract-transcript-to-gene-map-from-trinity"], inputs=[ToolInput(tag="in_trinity_fast_a_file", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_map_file", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Extract_Transcript_To_Gene_Map_From_Trinity_V0_1_0().translate("wdl", allow_empty_container=True)

